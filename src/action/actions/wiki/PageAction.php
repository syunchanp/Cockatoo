<?php
namespace wiki;
require_once(\Cockatoo\Config::COCKATOO_ROOT.'action/Action.php');
/**
 * GetPageAction.php - ????
 *  
 * @package ????
 * @access public
 * @author hiroaki.kubota <hiroaki.kubota@mail.rakuten.com> 
 * @create 2011/07/07
 * @version $Id$
 * @copyright Copyright (C) 2011, rakuten 
 */

class PageAction extends \Cockatoo\Action {
  public function proc(){
    try{
      //list($P,$D,$C,$p,$m,$q,$c) = \Cockatoo\parse_brl($this->BRL);
      // 
      $this->setNamespace('wiki');

      $session = $this->getSession();
      $page   = $this->args['P'];
      $name   = $this->args['N'];
      $user = $session['login']['user'];
      // Query strings
      $op = $session[\Cockatoo\Def::SESSION_KEY_POST]['op'];
      if ( ! $op ) {
        $op = 'get';
      }
      if ( $op === 'get' ) {
        $this->updateSession(array('wiki' => $session['wiki'] ) );
        $pdata = Lib::get_page($page);
        if ( $pdata ) {
          return array( 'page' => $pdata);
        }else {
          $origin = '*New';
          $contents = array(array('tag' => 'h2','attr'=>array(),'children' => array(array('tag'=>'text' , 'text' => 'New'))));
          return array( 'page' =>
                        Lib::page($page,
                                  $origin,
                                  $contents,
                                  $user));
        }
      }elseif( $op === 'preview' ) {
        $origin   = $session[\Cockatoo\Def::SESSION_KEY_POST]['origin'];
        $lines = explode("\n",$origin);
        return array( 'page' => 
                      Lib::page($page,
                                $origin,
                                $this->parse($lines,$page),
                                $user));
      }elseif( $op === 'save' ) {
        if ( ! $user ) {
          throw new \Exception('You have to login before update wiki !!');
        }
        $origin   = $session[\Cockatoo\Def::SESSION_KEY_POST]['origin'];
        $lines = explode("\n",$origin);
        $pdata = Lib::page($page,
                         $origin,
                         $this->parse($lines,$page),
                         $user);
        Lib::save_page($page,$pdata);
        $this->save_history($page,$user,'EDIT');
        $this->setRedirect('/view/'.$page);
        return;
      }elseif( $op === 'move' ) {
        if ( ! $user ) {
          throw new \Exception('You have to login before update wiki !!');
        }
        $new = $session[\Cockatoo\Def::SESSION_KEY_POST]['new'];
        if ( $new ) {
          $pdata = Lib::get_page($page);
          if ( $pdata ) {
            $pdata['title'] = $new;
            $lines = explode("\n",$pdata['origin']);
            $pdata['contents'] = $this->parse($lines,$new);
            Lib::save_page($new,$pdata);
            $this->move_image($new,$page);
            Lib::remove_page($page);
            $this->save_history($new,$user,'MOVE from ' . $page ) ;
            $this->setRedirect('/view/'.$new);
            return;
          }
          $this->setRedirect('/view');
        }else{
          $this->setRedirect('/view/'.$page);
        }
        return;
      }
    }catch ( \Exception $e ) {
      $s['emessage'] = $e->getMessage();
      $this->updateSession($s);
      $this->setRedirect('/error');
       \Cockatoo\Log::error(__CLASS__ . '::' . __FUNCTION__ . $e->getMessage(),$e);
    }
  }
  private function move_image($new,$page){
    $olds = array();
    $news = array();
    $brl =  \Cockatoo\brlgen(\Cockatoo\Def::BP_STATIC, 'wiki', $page, '', \Cockatoo\Beak::M_KEY_LIST);
    $bret = \Cockatoo\BeakController::beakQuery(array($brl));
    foreach ( $bret[$brl] as $name ) {
      $old = \Cockatoo\brlgen(\Cockatoo\Def::BP_STATIC, 'wiki', $page, $name, \Cockatoo\Beak::M_DEL);
      $olds []= $old;
      $obrl  = \Cockatoo\brlgen(\Cockatoo\Def::BP_STATIC, 'wiki', $page, $name, \Cockatoo\Beak::M_GET);
      $oret = \Cockatoo\BeakController::beakQuery(array($obrl));
      if ( $oret[$obrl] ) {
        $nset = \Cockatoo\brlgen(\Cockatoo\Def::BP_STATIC, 'wiki', $new, $name, \Cockatoo\Beak::M_SET);
        $news []= array($nset,$oret[$obrl]);
      }
    }
    $bret = \Cockatoo\BeakController::beakQuery($news);
    $bret = \Cockatoo\BeakController::beakQuery($olds);
  }

  private function parse_inner(&$line,$page){
    $ret = array();
    $text = $line;
    for(;;){
      if ( preg_match('@^([^&\[]*)\[\[([^\]|]+)((?:\|[^\]]+)?)\]\](.*)@', $text , $matches ) !== 0 ) {
        // A   => [<text>|<link or url>]
        $ret [] = array('tag' => 'text' , 'text' => $matches[1]);
        if ( preg_match('@^https?://@', $matches[2] , $matchdummy ) !== 0 ) {
          $ret []= array('tag' => 'a', 'attr' => array('href' => $matches[2]) , 'children' => array(array('tag' => 'text' , 'text' => (($matches[3])?ltrim($matches[3],'|'):$matches[2]))) );
        }elseif(preg_match('@^#@', $matches[2] , $matchdummy ) !== 0 ) {
          $ret []= array('tag' => 'a', 'attr' => array('href' => $matches[2]) , 'children' => array(array('tag' => 'text' , 'text' => (($matches[3])?ltrim($matches[3],'|'):$matches[2]))) );
        }else{
          $ret []= array('tag' => 'a', 'attr' => array('href' => '/view/' . $matches[2]) , 'children' => array(array('tag' => 'text' , 'text' => (($matches[3])?ltrim($matches[3],'|'):$matches[2]))) );
        }
        $text = $matches[4];
        next;
      }elseif ( preg_match('@^([^&\[]*)&ref\(([^\),]*)(?:,(\d*)(?:,(\d*))?)?\);(.*)@', $text , $matches ) !== 0 ) {
        // IMG => &ref(<image>,<height>,<width>);
        $ret [] = array('tag' => 'text' , 'text' => $matches[1]);
        if ( preg_match('@^https?://@', $matches[2] , $matchdummy ) !== 0 ) {
          $attr = array('src' => $matches[2]);
        }else {
          $attr = array('src' => '/img/'.$page.'?n='.$matches[2]);
        }
        if ( $matches[3] ) {
          $attr['height'] = $matches[3];
        }
        if ( $matches[4] ) {
          $attr['width'] = $matches[4];
        }
        $ret [] = array( 'tag' => 'a', 'attr' => array('href' => '/img/'.$page.'?n='.$matches[2]) , 'children' => array( array('tag' => 'img', 'attr' => $attr)));
        $text = $matches[5];
        next;
      }elseif ( preg_match('@^([^&\[]*)&color\(([^\)]*)\)\{([^\}]*)\};(.*)@', $text , $matches ) !== 0 ) {
        // COLOR => &color(<color>){<text>};
        $ret [] = array('tag' => 'text' , 'text' => $matches[1]);
        $ret []= array('tag' => 'span', 'attr' => array('style' => 'color:' . $matches[2]) , 'children' => array(array('tag' => 'text','text' => $matches[3])) );
        $text = $matches[4];
        next;
      }elseif ( preg_match('@^([^&\[]*)&b\(([^\)]*)\)\{([^\}]*)\};(.*)@', $text , $matches ) !== 0 ) {
        // BOLD => &b(<level>){<text>};
        $ret [] = array('tag' => 'text' , 'text' => $matches[1]);
        $ret []= array('tag' => 'b', 'attr' => array('class' => 'b' . $matches[2]) , 'children' => array(array('tag' => 'text','text' => $matches[3])) );
        $text = $matches[4];
        next;
      }elseif ( preg_match('@^([^&\[]*)&anchor\(([^\)]*)\);(.*)@', $text , $matches ) !== 0 ) {
        // ANCHOR => &anchor(<name>);
        $ret [] = array('tag' => 'text' , 'text' => $matches[1]);
        $ret [] = array( 'tag' => 'a', 'attr' => array('href' => '#'.$matches[2], 'name' => $matches[2]), 'children' => array(array('tag' => 'text','text' => '+')));
        $text = $matches[3];
        next;
      }elseif ( preg_match('@^(.*?)\\\\\\\\(.*)@', $text , $matches ) !== 0 ) {
        // BR => \\
        $ret [] = array('tag' => 'text' , 'text' => $matches[1]);
        $ret [] = array('tag' => 'br');
        $text = $matches[2];
      }else{
        $ret [] = array('tag' => 'text' , 'text' => $text);
        break;
      }
    }
    return $ret;
  }
  private function parse(&$lines,&$page,$hedding=1) {
    $ret = array();
    $flg = '';
    while ( count($lines) ) {
      $line = array_shift($lines);      
      if ( preg_match('@^ (.*)@', $line , $matches ) !== 0 ) {
        //PRE
        if ( $flg !== 'pre' ) {
          $flg = 'pre';
          $ret []= array('tag' => 'pre', 'attr' => array(), 'children' => array() );
        }
        $cur = &$ret[count($ret)-1];
        $cur['children'] []= array('tag' => 'text' , 'text' => chop($matches[1]));
      }elseif ( preg_match('@^(-----)@', $line , $matches ) !== 0 ) {
        //HR
        $flg = '';
        $ret []= array('tag' => 'hr', 'attr' => array(), 'children' => array() );
      }elseif ( preg_match('@^(-+)(.*)@', $line , $matches ) !== 0 ) {
        //UL
        if ( $flg !== 'ul' ) {
          $flg = 'ul';
          $ret []= array('tag' => 'ul', 'attr' => array() , 'children' => array() );
        }
        $cur = &$ret[count($ret)-1];
        $n = strlen($matches[1]);
        $cur2 = &$cur;
        for ( $i = 1 ; ; $i++ ) {
          if ( $n === $i) {
            $cur2['children'] []= array('tag' => 'li', 'attr' => array() , 'children' => $this->parse_inner($matches[2],$page));
            break;
          }
          if ( $cur2['children'][count($cur2['children'])-1]['tag'] !== 'ul' ) {
            $cur2['children'] []= array('tag' => 'ul', 'attr' => array() , 'children' => array() );
          }
          $cur2 = &$cur2['children'][count($cur2['children'])-1];
        }
      }elseif ( preg_match('@^(\++)(.*)@', $line , $matches ) !== 0 ) {
        //OL
        if ( $flg !== 'ol' ) {
          $flg = 'ol';
          $ret []= array('tag' => 'ol', 'attr' => array() , 'children' => array() );
        }
        $cur = &$ret[count($ret)-1];
        $n = strlen($matches[1]);
        $cur2 = &$cur;
        for ( $i = 1 ; ; $i++ ) {
          if ( $n === $i) {
            $cur2['children'] []= array('tag' => 'li', 'attr' => array() , 'children' => $this->parse_inner($matches[2],$page));
            break;
          }
          if ( $cur2['children'][count($cur2['children'])-1]['tag'] !== 'ol' ) {
            $cur2['children'] []= array('tag' => 'ol', 'attr' => array() , 'children' => array() );
          }
          $cur2 = &$cur2['children'][count($cur2['children'])-1];
        }
      }elseif ( preg_match('@^(\*+)(.*)@', $line , $matches ) !== 0 ) {
        //H?
        $flg = '';
        $h=strlen($matches[1]);
        if ( $h > ($hedding) ) {
          array_unshift($lines,$line);
          $ret []= array('tag' => 'div','attr' => array('class'=>'h'.($hedding+1)),'children' => $this->parse($lines,$page,($hedding+1)));
        }elseif ( $h === $hedding ){
          $ret []= array('tag' => 'h'.($hedding+1), 'attr' => array(), 'children' => $this->parse_inner($matches[2],$page));
          $ret []= array('tag' => 'div','attr' => array('class'=>'h'.($hedding+1)),'children' => $this->parse($lines,$page,($hedding+1)));
        }else{
          array_unshift($lines,$line);
          return $ret;
        }
      }elseif ( preg_match('@^>>(.*)@', $line , $matches ) !== 0 ) {
        //BLOCKQUOTE
        $flg = '';
        $ret []= array('tag' => 'blockquote', 'attr' => array(), 'children' => array_merge($this->parse_inner($matches[1],$page),array(array('tag' => 'br','text' => ''))));
      }elseif ( preg_match('@^:([^:]+):(.*)@', $line , $matches ) !== 0 ) {
        // DL DT DD
        $flg = '';
        $ret []= array('tag' => 'dl', 'attr' => array(), 'children' => array(
                         array( 'tag' => 'dt', 'attr' => array(),'children' => $this->parse_inner($matches[1],$page)),
                         array( 'tag' => 'dd', 'attr' => array(),'children' => $this->parse_inner($matches[2],$page))));
      }else{
        $flg = '';
        $ret []= array('tag' => 'text', 'children' => array_merge($this->parse_inner($line,$page),array(array('tag' => 'br','text' => ''))));
      }
    }
    return $ret;
  }

  private function save_history($page,$user,$op){
    $date = strftime('%Y%m%d',time());
    $now = strftime('%Y/%m/%d %H:%M:%S',time());
    // get
    $hist = array();
    $brl = \Cockatoo\brlgen(\Cockatoo\Def::BP_STORAGE,'wiki','hist','/CUR',\Cockatoo\Beak::M_GET,array(),array());
    $bret = \Cockatoo\BeakController::beakQuery(array($brl));
    if ( $bret[$brl] and $bret[$brl]['hist']) {
      krsort($bret[$brl]['hist']);
      $hist = $bret[$brl];
      $hist['hist'] = array_slice($hist['hist'],0,10);
    }else {
      $hist = array();
    }
    // save history
    $hist ['hist'][$now]= array('title' => $page , 'author' => $user , 'op' => $op);
    $brl = \Cockatoo\brlgen(\Cockatoo\Def::BP_STORAGE,'wiki','hist','/'.$date,\Cockatoo\Beak::M_SET,array(),array());
    $bret = \Cockatoo\BeakController::beakQuery(array(array($brl,$hist)));
    // save current history
    $brl = \Cockatoo\brlgen(\Cockatoo\Def::BP_STORAGE,'wiki','hist','/CUR',\Cockatoo\Beak::M_SET,array(),array());
    $bret = \Cockatoo\BeakController::beakQuery(array(array($brl,$hist)));
  }

  public function postProc(){
  }
}
