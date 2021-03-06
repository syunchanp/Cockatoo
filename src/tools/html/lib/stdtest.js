//var stdtest_log;
//
//exports.stdtest = function(log) { 
//  stdtest_log = log;
//  return this;
//}
//
//
//exports.DEFAULT_ON_ERROR = function(test,strurl,selector,msg,data){
//  stdtest_log.echo(strurl,selector,msg,data);
//}

//----------------------------------------------
// Default tests
//----------------------------------------------

exports.NULL_ON_ERROR = function(test,strurl,selector,msg,data){
}

exports.DEFAULT_CHECK_STATUS =  {
//    500:true,501:true,502:true,503:true,504:true,505:true,506:true,507:true,508:true,510:true,
//    400:true,401:true,402:true,403:true,404:true,405:true,406:true,407:true,408:true,409:true,410:true,
//    411:true,412:true,413:true,414:true,415:true,416:true,417:true,418:true,420:true,421:true,422:true,423:true,424:true,425:true,426:true,
    300:true,301:true,302:true,303:true,304:true,305:true,306:true,307:true,350:true,
    200:true,201:true,202:true,203:true,204:true,205:true,206:true,207:true,208:true,226:true
};

exports.DEFAULT_FILTER_INNER = {
  ERROR  : [],
  IGNORE : [],
  FOLLOW : [],
  INNER_DOMAIN : true
}

exports.DEFAULT_FILTER = {
  ERROR  : [],
  IGNORE : [],
  FOLLOW : ['https?://'],
  INNER_DOMAIN : false
}


//----------------------------------------------
// Default tests
//----------------------------------------------

//---------------
// Simple status check
exports.STATUS_TEST = {
  ON_ERROR   : this.NULL_ON_ERROR,
  STATUS     : this.DEFAULT_CHECK_STATUS,
  FETCH_BODY : false,
  REDIRECT   : {
    FILTER   : this.DEFAULT_FILTER_INNER
  },
  CHECKS     : []
};

// Simple fetch check
exports.FETCH_TEST = {
  ON_ERROR   : this.NULL_ON_ERROR,
  STATUS     : this.DEFAULT_CHECK_STATUS,
  FETCH_BODY : true,
  REDIRECT   : {
    FILTER   : this.DEFAULT_FILTER_INNER
  },
  CHECKS     : []
};
// Simple fetch check
exports.CSS_TEST = {
  ON_ERROR   : this.NULL_ON_ERROR,
  STATUS     : this.DEFAULT_CHECK_STATUS,
  FETCH_BODY : true,
  REDIRECT   : {
    FILTER   : this.DEFAULT_FILTER_INNER
  },
  CHECKS     : [{ // fetch check with <style>FOO{ url(??) }</style>
    METHOD   : 'CSS',
    SELECTOR : 'style',
    FILTER   : this.DEFAULT_FILTER,
    TEST     : this.FETCH_TEST
  },{          // fetch check with <style>FOO{ url(??) }</style>
    METHOD   : 'CSS',
    SELECTOR : '[style]',
    FILTER   : this.DEFAULT_FILTER,
    TEST     : this.FETCH_TEST
  }]
};


//---------------
// Html checks
//   ( standerd tags & dead link )
exports.STD_TEST = {
//  ON_ERROR : 'this.NULL_ON_ERROR',
  STATUS     : this.DEFAULT_CHECK_STATUS,
  FETCH_BODY : true,
  REDIRECT   : {
    FILTER   : this.DEFAULT_FILTER_INNER
  },
  CHECKS   :[{ // requiring <title>
    METHOD   : 'EXIST',
    SELECTOR : 'title',
  },{          // requiring <body>
    METHOD   : 'EXIST',
    SELECTOR : 'body',
  },{          // refulsing empty <title>
    METHOD   : 'TEXT',
    SELECTOR : 'title',
    EXPECTS  : '.'
  },{          // status check with <frame src="??">
    METHOD   : 'LINK',
    SELECTOR : 'frame',
    FILTER   : this.DEFAULT_FILTER,
    TEST     : this.FETCH_TEST
  },{          // status check with <iframe src="??">
    METHOD   : 'LINK',
    SELECTOR : 'iframe',
    FILTER   : this.DEFAULT_FILTER,
    TEST     : this.FETCH_TEST
//  },{          // status check with <a href="??">
//    METHOD   : 'LINK',
//    SELECTOR : 'a',
//    FILTER   : this.DEFAULT_FILTER_INNER,
//    TEST     : this.STATUS_TEST
  },{          // status check with <link href="??">
    METHOD   : 'LINK',
    SELECTOR : 'link',
    FILTER   : this.DEFAULT_FILTER,
    TEST     : this.STATUS_TEST
  },{          // status check with <img src="??">
    METHOD   : 'LINK',
    SELECTOR : 'img',
    FILTER   : this.DEFAULT_FILTER,
    TEST     : this.STATUS_TEST
  },{          // status check with <script src="??">
    METHOD   : 'LINK',
    SELECTOR : 'script',
    FILTER   : this.DEFAULT_FILTER,
    TEST     : this.STATUS_TEST
  }]
};


//---------------
// Html checks
//   ( standerd tags & dead link )
exports.FSTD_TEST = {
//  ON_ERROR : 'this.NULL_ON_ERROR',
  STATUS     : this.DEFAULT_CHECK_STATUS,
  FETCH_BODY : true,
  REDIRECT   : {
    FILTER   : this.DEFAULT_FILTER_INNER
  },
  CHECKS   :[{ // requiring <title>
//    METHOD   : 'EXIST',
//    SELECTOR : 'title',
//  },{          // requiring <body>
//    METHOD   : 'EXIST',
//    SELECTOR : 'body',
//  },{          // refulsing empty <title>
//    METHOD   : 'TEXT',
//    SELECTOR : 'title',
//    EXPECTS  : '.'
//  },{          // fetch check with <frame src="??">
    METHOD   : 'LINK',
    SELECTOR : 'frame',
    FILTER   : this.DEFAULT_FILTER,
    TEST     : this.FETCH_TEST
  },{          // fetch check with <iframe src="??">
    METHOD   : 'LINK',
    SELECTOR : 'iframe',
    FILTER   : this.DEFAULT_FILTER,
    TEST     : this.FETCH_TEST
  },{          // fetch check with <img src="??">
    METHOD   : 'LINK',
    SELECTOR : 'img',
    FILTER   : this.DEFAULT_FILTER,
    TEST     : this.FETCH_TEST
  },{          // fetch check with <script src="??">
    METHOD   : 'LINK',
    SELECTOR : 'script',
    FILTER   : this.DEFAULT_FILTER,
    TEST     : this.FETCH_TEST
  },{          // fetch check with <link href="??">
    METHOD   : 'LINK',
    SELECTOR : 'link',
    FILTER   : this.DEFAULT_FILTER,
    TEST     : this.FETCH_TEST
  },{          // fetch check with <style>FOO{ url(??) }</style>
    METHOD   : 'CSS',
    SELECTOR : 'style',
    FILTER   : this.DEFAULT_FILTER,
    TEST     : this.FETCH_TEST
  },{          // fetch check with <style>FOO{ url(??) }</style>
    METHOD   : 'CSS',
    SELECTOR : '[style]',
    FILTER   : this.DEFAULT_FILTER,
    TEST     : this.FETCH_TEST
  }]
};

//---------------
// Html checks
//   ( standerd tags & dead link )
exports.CSTD_TEST = {
//  ON_ERROR : 'this.NULL_ON_ERROR',
  STATUS     : this.DEFAULT_CHECK_STATUS,
  FETCH_BODY : true,
  REDIRECT   : {
    FILTER   : this.DEFAULT_FILTER_INNER
  },
  CHECKS   :[{ // requiring <title>
//    METHOD   : 'EXIST',
//    SELECTOR : 'title',
//  },{          // requiring <body>
//    METHOD   : 'EXIST',
//    SELECTOR : 'body',
//  },{          // refulsing empty <title>
//    METHOD   : 'TEXT',
//    SELECTOR : 'title',
//    EXPECTS  : '.'
//  },{          // fetch check with <frame src="??">
    METHOD   : 'LINK',
    SELECTOR : 'frame',
    FILTER   : this.DEFAULT_FILTER,
    TEST     : this.FETCH_TEST
  },{          // fetch check with <iframe src="??">
    METHOD   : 'LINK',
    SELECTOR : 'iframe',
    FILTER   : this.DEFAULT_FILTER,
    TEST     : this.FETCH_TEST
  },{          // fetch check with <img src="??">
    METHOD   : 'LINK',
    SELECTOR : 'img',
    FILTER   : this.DEFAULT_FILTER,
    TEST     : this.FETCH_TEST
  },{          // fetch check with <script src="??">
    METHOD   : 'LINK',
    SELECTOR : 'script',
    FILTER   : this.DEFAULT_FILTER,
    TEST     : this.FETCH_TEST
  },{          // fetch check with <link href="??">
    METHOD   : 'LINK',
    SELECTOR : 'link',
    FILTER   : this.DEFAULT_FILTER,
    TEST     : this.CSS_TEST
  },{          // fetch check with <style>FOO{ url(??) }</style>
    METHOD   : 'CSS',
    SELECTOR : 'style',
    FILTER   : this.DEFAULT_FILTER,
    TEST     : this.FETCH_TEST
  },{          // fetch check with <style>FOO{ url(??) }</style>
    METHOD   : 'CSS',
    SELECTOR : '[style]',
    FILTER   : this.DEFAULT_FILTER,
    TEST     : this.FETCH_TEST
  }]
};

//---------------
// Crawl page of the site. and simple status check
//   ( standerd tags & dead link )
exports.STD_CRAWL_TEST = {
//  ON_ERROR : this.NULL_ON_ERROR,
  STATUS   : this.DEFAULT_CHECK_STATUS,
  REDIRECT : {
    FILTER : this.DEFAULT_FILTER_INNER
  },
  CHECKS   :[{
    METHOD   : 'CRAWL',
    SELECTORS: ['a'],
    FILTER   : this.DEFAULT_FILTER_INNER
  }]
}
