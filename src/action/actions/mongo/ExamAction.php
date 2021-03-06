<?php
namespace mongo;
/**
 * ExamAction.php - ????
 *  
 * @package ????
 * @access public
 * @author hiroaki.kubota <hiroaki.kubota@mail.rakuten.com> 
 * @create 2011/07/07
 * @version $Id$
 * @copyright Copyright (C) 2011, rakuten 
 */
class ExamAction extends UserPostAction {
  protected $REDIRECT = '/mongo/exams';
  protected $COLLECTION = 'exams';
  protected $DOCNAME    = 'exam';

  static $NUM_QUESTION  = 10;
  static $NUM_CANDIDATE = 4;

  function new_doc(){
    $qname = 'new';
    $qs = null;
    for( $i = 0 ; $i < self::$NUM_QUESTION ; $i++ ) {
      $qs []= array(
        'q' => '',
        'contents' => array(),
        'a' => '',
        'e' => '',
        'c' => array('','','',''));
    }
    return array(
      'done' => 1,
      'docid' => 'new',
      'public' => '',
      'qname' => $qname,
      'qnum' => 5,
      'qs' => $qs,
      'owner' => $user
      );
  }
  function post_to_doc (&$post) {
    $public  = $post['public'];
    $qname   = $post['qname'];
    $qnum    = $post['qnum'];
    $qsummary= $post['qsummary'];
    $docid  =  $post['docid'];
    $owner   = $post['owner'];
    $qs = null;
    for( $i = 0 ; $i < self::$NUM_QUESTION ; $i++ ) {
      $origin   = $post['q'.$i];
      $lines    = preg_split("@\r?\n@",$origin);
      $parser   = new PageParser($qname,$lines);
      $contents =  $parser->parse();
      $answer   = $post['q'.$i.'a'];
      $eorigin   = $post['q'.$i.'e'];
      $lines    = preg_split("@\r?\n@",$eorigin);
      $parser   = new PageParser($qname,$lines);
      $explanation =  $parser->parse();
      $candidates = null;
      for( $c = 0 ; $c < self::$NUM_CANDIDATE ; $c++ ) {
        $candidates []= $post['q'.$i.'c'.$c];
      }
      $qs [] = array(
        'show' => ($answer?'show':''),
        'q' => $origin,
        'contents' => $contents,
        'a' => $answer,
        'c' => $candidates,
        'e' => $eorigin,
        'explanation' => $explanation,
        's' => array_merge(array($answer),$candidates)
        );
    }
    return array(
      'public' => $public,
      'docid' => $docid,
      'qname' => $qname,
      'qnum' => $qnum,
      'qsummary' => $qsummary,
      'qs' => $qs,
      'owner' => $owner);
  }
  function update_docid(&$docid,&$doc) {
    if ( ! $docid || strcmp($docid,'new')===0 ) {
      $docid = uniqid();
    }
    return $docid;
  }
  function begin_hook(&$op,&$docid,&$post){
    if ( $this->method === \Cockatoo\Beak::M_GET ) {
      if ( $op === 'eval' ) {
        $session     = $this->getSession();
        $doc = $session['exam'];
        $qs =& $doc['qs'];
        $all = sizeof($qs);
        $correct = 0;
        array_walk($qs,function(&$e,$i) use ($session,$post,$all,&$correct){
            if ( $post['q'.$i.'a'] !== null && (int)$post['q'.$i.'a'] === (int)$e['correct'] ) {
              $correct++;
            }
            $e['checked'] = $post['q'.$i.'a'];
            $e['show'] = 'show';
          });
        $doc['score'] = floor(100*$correct/$all);
        $doc['done'] = '1';
        $s['exam'] = null;
        $this->updateSession($s);
        return $doc;
      }
    }
    return null;
  }
  function get_hook(&$doc){
    $qs = array_filter($doc['qs'],function ($e) {
        return (boolean)$e['show'];
      });
    array_walk($qs,function(&$e){
        $e['show'] = 'q';
        shuffle($e['s']);
        foreach ( $e['s'] as $k => $v ) {
          if ( $v === $e['a'] ) {
            $e['correct'] = $k;
            break;
          }
        }
      });
    shuffle($qs);
    $qs = array_slice($qs,0,$doc['qnum']);
    $qs[sizeof($qs)-1]['last'] = 1;
    $doc['qs'] = $qs;
    $s['exam'] = $doc;
    $this->updateSession($s);
    return $doc;
  }
  function set_hook(&$doc){
    $doc['done'] = '1';
  }
}

