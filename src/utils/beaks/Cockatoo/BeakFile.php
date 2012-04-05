<?php
/**
 * BeakFile.php - Beak driver : File base storage
 *  
 * @access public
 * @package cockatoo-beaks
 * @author hiroaki.kubota <hiroaki.kubota@mail.rakuten.com> 
 * @version $Id$
 * @copyright Copyright (C) 2011, rakuten 
 */
namespace Cockatoo;
require_once (Config::COCKATOO_ROOT.'utils/beak.php');

/**
 * File base storage
 *
 * @author hiroaki.kubota <hiroaki.kubota@mail.rakuten.com> 
 */
class BeakFile extends Beak {
  /**
   * Result object
   */
  protected $ret = null;
  /**
   * Directory data file
   *   Data filename : <path>/.meta
   */
  const DIR_FILE = '.meta';
  /**
   * Index directory
   *   Data filename : <path>/.idx/
   */
  const DIR_INDEX = '.idx/';
  /**
   * Data file suffix
   *   Data filename : <path>.j
   */
  const DATA_FILE = '.j';
  /**
   * Database directory
   */
  const BeakFileDirectory = 'datasource';

  /**
   * Constructor
   * 
   * @see Action.php
   */
  public function __construct(&$brl,&$scheme,&$domain,&$collection,&$path,&$method,&$queries,&$comments,&$arg,&$hide) {
    parent::__construct($brl,$scheme,$domain,&$collection,$path,$method,$queries,$comments,$arg,$hide);

    if ( isset($this->queries[Beak::Q_FILTERS]) ) {
      $this->filters = explode(',',$this->queries[Beak::Q_FILTERS]);
    }else if ( isset($this->queries[Beak::Q_EXCEPTS]) ) {
      $this->excepts = explode(',',$this->queries[Beak::Q_EXCEPTS]);
    }
    $this->collection_path = Config::COCKATOO_ROOT . self::BeakFileDirectory . '/' . $this->domain . '/' . $this->collection . '/';
  }
  private function path_gen($path){
    if ( !$path or preg_match('@/$@',$path,$matches) !== 0 ) {
      return $this->collection_path.$path.self::DIR_FILE;
    }else{
      return $this->collection_path.$path.self::DATA_FILE;
    }
  }
  /**
   * Filesystem crawler
   * 
   * @param String $path  ..
   * @param String $rel   ..
   * @param String $isKey ..
   * @return Array  Array(Path)
   */
  private function listDir($path,$rel,$isKey) {
    $ret = array();
    if ( is_dir($path)){
      if ($dh = opendir($path)) {
        while (($file = readdir($dh)) !== false) {
          if ( preg_match('@^\.\.?(svn)?$@',$file,$matches) != 0 ) { // @@@ svn
            continue;
          }
          if ( $isKey ) {
            if ( is_dir($path.'/'.$file) ) {
              $ret = array_merge($ret,$this->listDir($path.'/'.$file,$rel.$file.'/',$isKey));
            }else {
              if ( preg_match('@\.j$@',$file,$matches) != 0 ) {
                $ret [] = substr($rel.$file,0,-2);
              }elseif ( preg_match('@\.meta$@',$file,$matches) != 0 ) {
                $ret [] = substr($rel.$file,0,-5);
              }
            }
          } else {
            if ( is_dir($path.'/'.$file) ) {
              $ret [] = $rel.$file;
            }
          }
        }
        sort($ret);
        closedir($dh);
      }
    }
    return $ret;
  }
  private function getIndex($column = ''){
    $dir = $this->collection_path . self::DIR_INDEX;
    if ( ! $column ) {
      if( is_dir($dir) and $dh = opendir($dir) ) {
        $ret = array();
        while (($index = readdir($dh)) !== false) {
          if ( preg_match('@^\.+$@',$index,$matches) != 0 ) {
            continue;
          }
          $ret []= $index;
        }
        return $ret;
      }
      return array();
    }else{
      $ifile = $dir . $column;
      if ( is_file($ifile)) {
        $json = file_get_contents($ifile);
        return self::decode($json);
      }
      return array();
    }
  }
  private function setIndex($index,$data){
    $idata = $this->getIndex($index);
    if ( isset($data[$index])){
      $idata[$data[$index]] []= $data[Beak::Q_UNIQUE_INDEX];
      $idata[$data[$index]] = array_unique($idata[$data[$index]]);
      $json = self::encode($idata);
      $ifile = $this->collection_path . self::DIR_INDEX.$index;
      file_put_contents($ifile,$json);
    }
  }

  /**
   * Not necessary to implement
   * 
   * @see Action.php
   */
  public function createColQuery(){
    if ( $this->renew ) {
      self::rmdir($this->collection_path);
    }
    self::mkdir($this->collection_path);
    self::mkdir($this->collection_path . self::DIR_INDEX);
    if ( isset($this->queries[Beak::Q_INDEXES]) ){
      foreach(explode(',',$this->queries[Beak::Q_INDEXES]) as $index){
        $ifile = $this->collection_path . self::DIR_INDEX.$index;
        if ( $this->renew ) {
          file_put_contents($ifile,'{"":[]}');
        }
        foreach($this->listDir($this->collection_path,'',true) as $path){
          $data = $this->getDoc($this->path_gen($path));
          $this->setIndex($index,$data);
        }
      }
    }
  }
  /**
   * Get all keys containing the collection.
   *
   * @see Action.php
   */
  public function listKeyQuery() {
    $this->ret =  $this->listDir($this->collection_path,'',true);
  }

  /**
   * Get all collections name
   *
   * @see Action.php
   */
  public function listColQuery() {
    $this->ret =  $this->listDir($this->collection_path,'',false);
  }

  /**
   * Get impl
   */
  private function getDoc($file) {
    if ( is_file($file)) {
      $json=file_get_contents($file);
      $data=self::decode($json);
      if ( $this->filters ) {
        $ret;
        foreach($this->filters as $c){
          if ( isset($data[$c]) ) {
            $ret[$c] = $data[$c];
          }
        }
        return $ret;
      }elseif($this->excepts ) {
        foreach($this->excepts as $c){
          if ( isset($data[$c]) ) {
            unset($data[$c]);
          }
        }
      }
      return $data;
    }
    return null;
  }
  /**
   * Get multi document datas
   * 
   * @see Action.php
   */
  public function getaQuery() {
    $this->ret  = null;
    $queries = array();
    foreach ( $this->arg as $key => $cond ) {
      if ( $key === Beak::Q_UNIQUE_INDEX ) {
        $queries = $cond;
        break;
      }
      $idata = $this->getIndex($key);
      if ( $idata ) {
        foreach($cond as $v){
          if ( isset($idata[$v]) ){
            $queries = array_merge($queries,$idata[$v]);
          }
        }
        break;
      }
    }
    if ( $queries ) {
      $this->ret = array();
      foreach($queries as $path){
        $data = $this->getDoc($this->path_gen($path));
        if ( $data !== null ) {
          $this->ret[$path] = $data;
        }
      }
    }
  }
  /**
   * Get document data
   *
   * @see Action.php
   */
  public function getQuery() {
    $this->ret = $this->getDoc($this->path_gen($this->path));
  }

  /**
   * MKDIR
   *
   * @param String $path path
   */
  private static function mkDir($path) {
    if ( !is_dir($path) ){
      self::mkDir(dirname($path));
      mkdir($path);
    }
  }

  /**
   * RMDIR
   *
   * @param String $path path
   */
  private static function rmDir ($path) {
    if ( is_dir($path) ){
      if ( is_dir($path) and $dh = opendir($path) ) {
        while (($child = readdir($dh)) !== false) {
          if ( preg_match('@^\.+$@',$child,$matches) != 0 ) {
            continue;
          }
          $child = $path.'/'.$child;
          self::rmDir($child);
        }
        rmdir($path);
      }
    }else{
      if ( is_file($path) ){
        unlink($path);
      }
    }
  }

  /**
   * Judge commitavle when revision mode.
   * 
   * @return boolean Returns Commitable
   * @todo more effeciently !!! @@@
   */
  private function judgeRev($file,&$arg){
    $prev = null;
    if ( $this->rev ) {
      if ( is_file($file)) {
        $json=file_get_contents($file);
        $prev = self::decode($json);
        if ( $prev[Beak::ATTR_REV] and $arg[Beak::ATTR_REV] and
               $arg[Beak::ATTR_REV] !== $prev[Beak::ATTR_REV] ){
          Log::debug(__CLASS__ . '::' . __FUNCTION__ . ' : ' . 'revision judge failure : ' . $arg[Beak::ATTR_REV] .' !== ' . $prev[Beak::ATTR_REV]);
          return false; // Skip
        }
      }
      $arg[Beak::ATTR_REV] = (String)time();
    }
    return true;
  }

  /**
   * Set impl
   */
  private function setDoc($file,$path,&$arg) {
    if ( ! $this->judgeRev($file,&$arg) ){
      return false;
    }
    self::mkDir(dirname($file));
    $arg[Beak::Q_UNIQUE_INDEX] = $path;
    if ( $this->partial) {
      if ( is_file($file)) {
        $json=file_get_contents($file);
        $prev = self::decode($json);
        if ( $prev ) {
          $arg = array_merge($prev,$arg);
        }
      }
    }
    foreach($this->getIndex() as $index ){
      $this->setIndex($index,$arg);
    }

    $data = self::encode($arg);
    return file_put_contents($file,$data)?true:false;
  }
  /**
   * Set document data
   *
   * @see Action.php
   */
  public function setQuery() {
    $this->ret = $this->setDoc($this->path_gen($this->path),$this->path,$this->arg);
  }
  /**
   * Set multi document datas
   *
   * @see Action.php
   */
  public function setaQuery() {
    $this->ret  = array();
    foreach ( $this->arg as $arg ) {
      $path = $arg[Beak::Q_UNIQUE_INDEX];
      $this->ret[$path] = $this->setDoc($this->path_gen($path),$path,$arg);
    }
  }

  /**
   * Remove document
   */
  private function delDoc($file,$arg) {
    if ( ! $this->judgeRev($file,$arg) ){
      return false;
    }
    if ( is_file($file) ) {
      unlink($file);
    }
    return true;
  }
  /**
   * Remove document
   *
   * @see Action.php
   */
  public function delQuery() {
    $this->ret = $this->delDoc($this->path_gen($this->path),$this->arg);
  }
  /**
   * Remove multi documents
   *
   * @see Action.php
   */
  public function delaQuery() {
    $this->ret  = array();
    foreach ( $this->arg[Beak::Q_UNIQUE_INDEX] as $cond ) {
      $path = &$cond;
      $this->ret[$path] = $this->delDoc($this->path_gen($path),null);
    }
  }
  /**
   * Move collection
   */
  public function mvColQuery() {
    $dir = dirname($this->path_gen($this->path));
    if ( is_dir($dir) ){
      $new = dirname($dir) . '/' . $this->queries[Beak::Q_NEWNAME];
      self::rmdir($new);
      rename($dir,$new);
    }
  }
  /**
   * System use only
   *
   */
  public function sysQuery() {
    if ( $this->queries[Beak::Q_SYS] = 'idxs' ) {
      $this->ret = $this->getIndex();
    }
  }
  /**
   * Get operation results
   * 
   * @see Action.php
   */
  public function result() {
    return $this->ret;
  }

  static private function decode(&$str){
//     return json_decode($str,true);
    $data = json_decode($str,true);
    self::decode_unpack($data);
    return $data;
  }
  static private function decode_unpack(&$data){
    if ( is_array($data) ) {
      foreach($data as $k => $v){
        self::decode_unpack($data[$k]);
      }
    } elseif( is_string($data) and strncmp('@BIN@',$data,5)=== 0) {
      $data = pack('H*',substr($data,5));
    }else {
    }
  }

  static private function is_hash(&$array){
    foreach( $array as $k => $v  ){
      if ( is_string($k) ) {
        return true;
      }else{
        return false;
      }
    }
  }
  static private function encode(&$data){
    if ( Config::Mode === Def::MODE_DEBUG ) {
      return self::encodeD($data);
    }
    
    $ret;
    if ( is_array($data) ) {
      if ( self::is_hash($data) ) {
        $ret = '{';
        $flg = false;
        foreach( $data as $k => $v ) {
          $ret .= ($flg?',':'').'"'.$k.'":'.self::encode($v);
          $flg = true;
        }
        $ret .= '}';
      }else {
        $ret = '[';
        $flg = false;
        foreach( $data as $k => $v ) {
          $ret .= ($flg?',':'').self::encode($v);
          $flg = true;
        }
        $ret .= ']';
      }
    } elseif( is_string($data)) {
      $s = json_encode($data);
      if ( $data and $s === 'null' ) {
        $s = '"@BIN@'.join(unpack('H*',$data)).'"';
      }
      $ret = $s;
    } else{
      $ret = json_encode($data);
    }
    return $ret;
  }
  static private function encodeD(&$data){
    $ret;
    if ( is_array($data) ) {
      if ( self::is_hash($data) ) {
        $ret = "{\n";
        $flg = false;
        foreach( $data as $k => $v ) {
          $ret .= ($flg?",\n":'').'"'.$k.'":'.self::encodeD($v);
          $flg = true;
        }
        $ret .= "\n}";
      }else {
        $ret = "[\n";
        $flg = false;
        foreach( $data as $k => $v ) {
          $ret .= ($flg?",\n":'').self::encodeD($v);
          $flg = true;
        }
        $ret .= "\n]";
      }
    } elseif( is_string($data)) {
      $s = json_encode($data);
      if ( $data and $s === 'null' ) {
        $s = '"@BIN@'.join(unpack('H*',$data)).'"';
      }
      $ret = $s;
    } else{
      $ret = json_encode($data);
    }
    return $ret;
  }
}
