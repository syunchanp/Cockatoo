{"title":"\u30c1\u30e5\u30fc\u30c8\u30ea\u30a2\u30eb\u30fbZookeeper\u9023\u643a","origin":"*\u524d\u56de\r\n-[[\u30c1\u30e5\u30fc\u30c8\u30ea\u30a2\u30eb\u30fb\u30a2\u30af\u30b7\u30e7\u30f3\u30c7\u30fc\u30e2\u30f3\u5206\u96e2]]\r\n\r\n*\u89e3\u8aac\r\n\u9577\u304b\u3063\u305f\u30c1\u30e5\u30fc\u30c8\u30ea\u30a2\u30eb\u3082\u3053\u308c\u3067\u6700\u5f8c\u3067\u3059\u3002\r\n\u4eca\u56de\u306f\u3001\u5206\u96e2\u3057\u305f\u30a2\u30af\u30b7\u30e7\u30f3\u30c7\u30fc\u30e2\u30f3\u3092Zookeeper\u3067\u66f4\u306b\u758e\u7d50\u5408\u306b\u3057\u307e\u3059\u3002\r\n\r\n*\u6d41\u308c\r\n+Zookeeper\u3092\u7acb\u3066\u308b\r\n+Cockatoo\u306bZoo\u9023\u643a\u7528\u30e2\u30b8\u30e5\u30fc\u30eb\u3092\u8ffd\u52a0\r\n+Cockatoo\u8a2d\u5b9a\u3067Zookeeper\u3092\u6307\u5b9a\r\n+Action\u3092\u518d\u8d77\u52d5\u3057Zookeeper\u3078\u767b\u9332\u3055\u305b\u308b&color(#FF0000){\u203b\u672c\u6765\u306f\u5225\u30b5\u30fc\u30d0\u306b\u7acb\u3066\u308b\u3060\u3051\u3067\u843d\u3068\u3059\u5fc5\u8981\u306f\u306a\u3044};\r\n+Zookeeper\u30af\u30e9\u30a4\u30a2\u30f3\u30c8\u30c7\u30fc\u30e2\u30f3\u3092\u7acb\u3066\u308b\r\n+Cockatoo\u8a2d\u5b9a\u304b\u3089wiki-action\u306e\u9759\u7684\u30eb\u30fc\u30c8\u6307\u5b9a\u3092\u524a\u9664\r\n+Gateway\u3092\u518d\u8d77\u52d5\u3057Zookeeper\u3092\u53c2\u7167\u3055\u305b\u308b\r\n\r\n*\u30c1\u30e5\u30fc\u30c8\u30ea\u30a2\u30eb\r\n**Zookeeper\u3092\u7acb\u3066\u308b\r\n\u307e\u305a\u306fZookeeper\u304c\u7121\u3044\u3068\u59cb\u307e\u308a\u307e\u305b\u3093\u3002\r\n:\u30b3\u30de\u30f3\u30c9:~\/.capkg\/config\/capkg.sh install -p wiki-zookeeper -r <\u30a4\u30f3\u30b9\u30c8\u30fc\u30eb\u5148\u30db\u30b9\u30c8>\r\n \u4f8b>\r\n ~\/.capkg\/config\/capkg.sh install -p wiki-zookeeper -r localhost\r\n\r\n***\u78ba\u8a8d\r\n \/usr\/local\/zookeeper\/bin\/zkCli.sh <<<'ls \/'\r\n[zookeeper]\u3068\u3044\u3046\u30c7\u30a3\u30ec\u30af\u30c8\u30ea\u304c\u898b\u3048\u307e\u3059\r\n\r\n**Cockatoo\u306bZoo\u9023\u643a\u7528\u30e2\u30b8\u30e5\u30fc\u30eb\u3092\u8ffd\u52a0\r\n:\u30b3\u30de\u30f3\u30c9:~\/.capkg\/config\/capkg.sh install -p cockatoo-utils-zoo -r <\u30a4\u30f3\u30b9\u30c8\u30fc\u30eb\u5148\u30db\u30b9\u30c8>\r\n \u4f8b>\r\n ~\/.capkg\/config\/capkg.sh install -p cockatoo-utils-zoo -r localhost\r\n\r\n**Cockatoo\u8a2d\u5b9a\u3067Zookeeper\u3092\u6307\u5b9a\r\nZookeeper\u306e\u5834\u6240\u3092\u4e0e\u3048\u3066\u3042\u3052\u307e\u3059\u3002\r\n***\/usr\/local\/cockatoo\/config.php \u3092\u7de8\u96c6\r\n*****BEFORE\r\n      self::$UseZookeeper        = false;\r\n*****AFTER\r\n      self::$UseZookeeper        = array('127.0.0.1:2181');\r\n\r\n**Action\u3092\u518d\u8d77\u52d5\u3057Zookeeper\u3078\u767b\u9332\u3055\u305b\u308b\r\n\u672c\u6765\u306f\u518d\u8d77\u52d5\u3067\u306f\u306a\u304f\u3001\u5225\u306e\u30b5\u30fc\u30d0\u3078\u306e\u69cb\u7bc9\u3067\u3059\u3002\r\n\u305d\u306e\u5834\u5408\u306b\u306f\u4e00\u5207\u65e2\u5b58\u306e\u30b5\u30fc\u30d3\u30b9\u3078\u306e\u5f71\u97ff\u306f\u4e0e\u3048\u307e\u305b\u3093\u3002\r\n\r\n***\u30a2\u30af\u30b7\u30e7\u30f3\u30c7\u30fc\u30e2\u30f3\u518d\u8d77\u52d5\r\nconfing.php\u306b\u6307\u5b9a\u3057\u305fZookeeper\u3078\u81ea\u5206\u3092\u767b\u9332\u3059\u308b\u3088\u3046\u306b\u306a\u308a\u307e\u3059\u3002\r\n sudo -u daemon \/usr\/local\/cockatoo\/daemon\/sbin\/action_controller.bash restart\r\n\r\n***\u78ba\u8a8d\r\nZookeeper\u3092\u76f4\u63a5\u8997\u3044\u3066\u898b\u307e\u3059\r\n \/usr\/local\/zookeeper\/bin\/zkCli.sh <<<'ls \/cockatoo\/action:\\\\wiki-action\\'\r\n[127.0.0.1:22651]\u304c\u767b\u9332\u3055\u308c\u3066\u3044\u307e\u3059\u3002\r\n\u3053\u308c\u306faction.conf\u3067\u6307\u5b9a\u3057\u305f\u5185\u5bb9\u306a\u306e\u3067\u3059\u304c\u3001\u52ff\u8ad6\u3001\u672c\u6765\u306f127.0.0.1\u3067\u306f\u306a\u304f\u5b9f\u969b\u306eIP\u3092\u6307\u5b9a\u3057\u307e\u3059\u3002\r\n\r\n**Zookeeper\u30af\u30e9\u30a4\u30a2\u30f3\u30c8\u30c7\u30fc\u30e2\u30f3\u3092\u7acb\u3066\u308b\r\nZookeeper\u304b\u3089\u60c5\u5831\u3092\u62fe\u3063\u3066\u304f\u308b\u30c7\u30fc\u30e2\u30f3\u3067\u3059\u3002\r\nZookeeper\u306f\u5fdc\u7b54\u304c\u9045\u304f\u30aa\u30f3\u30e9\u30a4\u30f3\u51e6\u7406\u4e2d\u306b\u554f\u5408\u305b\u308b\u3068\u30d1\u30d5\u30a9\u30fc\u30de\u30f3\u30b9\u304c\u51fa\u306a\u3044\u306e\u3067\u3059\u3002\r\n:\u30b3\u30de\u30f3\u30c9:~\/.capkg\/config\/capkg.sh install -p cockatoo-zookeeper -r <\u30a4\u30f3\u30b9\u30c8\u30fc\u30eb\u5148\u30db\u30b9\u30c8>\r\n \u4f8b>\r\n ~\/.capkg\/config\/capkg.sh install -p cockatoo-zookeeper -r localhost\r\n***\u30c7\u30fc\u30e2\u30f3\u8d77\u52d5\r\n sudo -u daemon \/usr\/local\/cockatoo\/daemon\/sbin\/zookeeper_watch.bash start\r\n\r\n***\u78ba\u8a8d\r\nZookeeper\u306e\u5185\u5bb9\u304c\u4ee5\u4e0b\u306e\u30d5\u30a1\u30a4\u30eb\u306b\u30c0\u30f3\u30d7\u3055\u308c\u307e\u3059\r\n\/usr\/local\/cockatoo\/daemon\/etc\/zoo.json\r\n\r\n**Cockatoo\u8a2d\u5b9a\u304b\u3089wiki-action\u306e\u9759\u7684\u30eb\u30fc\u30c8\u6307\u5b9a\u3092\u524a\u9664\r\nGateway\u3092Zookeeper\u3078\u5207\u308a\u66ff\u3048\u308b\u6e96\u5099\r\n***\/usr\/local\/cockatoo\/config.php \u3092\u7de8\u96c6\r\n*****BEFORE\r\n  self::$BeakLocation = array (\r\n    'cms:\/\/services-cms\/'           => array(''),\r\n    'layout:\/\/core-layout\/'         => array('127.0.0.1:27017'),\r\n    'component:\/\/core-component\/'   => array('127.0.0.1:27017'),\r\n    'static:\/\/core-static\/'         => array('127.0.0.1:27017'),\r\n    'layout:\/\/wiki-layout\/'         => array('127.0.0.1:27017'),\r\n    'component:\/\/wiki-component\/'   => array('127.0.0.1:27017'),\r\n    'static:\/\/wiki-static\/'         => array('127.0.0.1:27017'),\r\n    'storage:\/\/wiki-storage\/'       => array('127.0.0.1:27017'),\r\n    'action:\/\/wiki-action\/'         => array('127.0.0.1:22651'),\r\n    'session:\/\/wiki-session\/'       => array('127.0.0.1:11211') \r\n    );\r\n*****AFTER\r\n  self::$BeakLocation = array (\r\n    'cms:\/\/services-cms\/'           => array(''),\r\n    'layout:\/\/core-layout\/'         => array('127.0.0.1:27017'),\r\n    'component:\/\/core-component\/'   => array('127.0.0.1:27017'),\r\n    'static:\/\/core-static\/'         => array('127.0.0.1:27017'),\r\n    'layout:\/\/wiki-layout\/'         => array('127.0.0.1:27017'),\r\n    'component:\/\/wiki-component\/'   => array('127.0.0.1:27017'),\r\n    'static:\/\/wiki-static\/'         => array('127.0.0.1:27017'),\r\n    'storage:\/\/wiki-storage\/'       => array('127.0.0.1:27017'),\r\n\/\/    'action:\/\/wiki-action\/'         => array('127.0.0.1:22651'), \/\/ *** HERE (DELETE) ***\r\n    'session:\/\/wiki-session\/'       => array('127.0.0.1:11211') \r\n    );\r\n \r\n\r\n**Gateway\u3092\u518d\u8d77\u52d5\u3057\u5909\u66f4\u3092\u53cd\u6620\r\n sudo -u daemon \/usr\/local\/cockatoo\/daemon\/sbin\/gateway_controller.bash  restart\r\n\r\n***\u78ba\u8a8d\r\n\u3053\u308c\u3067\u7121\u505c\u6b62\u3067\u5207\u308a\u66ff\u3048\u304c\u51fa\u6765\u307e\u3057\u305f\u3002\r\n\r\n-\u4ee5\u4e0b\u306b\u30a2\u30af\u30bb\u30b9\uff08\u304d\u3061\u3093\u3068\u8868\u793a\u3055\u308c\u308b\uff09\r\n http:\/\/<\u30a4\u30f3\u30b9\u30c8\u30fc\u30eb\u5148\u30db\u30b9\u30c8>\/\r\n\r\n***\u89e3\u8aac\uff11\r\n\u5b9f\u306f\u3001Zookeeper\u30af\u30e9\u30a4\u30a2\u30f3\u30c8\u30c7\u30fc\u30e2\u30f3\u304c\u6b7b\u3093\u3067\u3082\u76f4\u3061\u306b\u969c\u5bb3\u306b\u306f\u306a\u308a\u307e\u305b\u3093\u3002\r\n sudo -u daemon \/usr\/local\/cockatoo\/daemon\/sbin\/zookeeper_watch.bash stop\r\n\r\n-\u4ee5\u4e0b\u306b\u30a2\u30af\u30bb\u30b9\uff08\u304d\u3061\u3093\u3068\u8868\u793a\u3055\u308c\u308b\uff09\r\n http:\/\/<\u30a4\u30f3\u30b9\u30c8\u30fc\u30eb\u5148\u30db\u30b9\u30c8>\/\r\n\r\n\u3053\u308c\u306f\u30c0\u30f3\u30d7\u3055\u308c\u305fzoo.json\u304c\u30ad\u30e3\u30c3\u30b7\u30e5\u3068\u3057\u3066\u6a5f\u80fd\u3057\u3066\u3044\u308b\u304b\u3089\u3067\u3059\u3002\r\n\r\n\u3057\u304b\u3057\u3053\u306e\u72b6\u614b\u3067Zookeeper\u306b\u5909\u66f4\u304c\u3042\u3063\u305f\u5834\u5408(\u3069\u3053\u304b\u306e\u30a2\u30af\u30b7\u30e7\u30f3\u304c\u6b7b\u3093\u3060\u7b49)\u306f\r\nZookeeper\u306e\u5909\u5316\u306b\u8ffd\u968f\u3067\u304d\u305a\u306b\u969c\u5bb3\u3068\u306a\u3063\u3066\u3057\u307e\u3046\u306e\u3067\u6ce8\u610f\u3057\u3066\u304f\u3060\u3055\u3044\u3002\r\n\r\n*\u307e\u3068\u3081\r\n\u3053\u308c\u3067\u30c1\u30e5\u30fc\u30c8\u30ea\u30a2\u30eb\u306f\u7d42\u4e86\u3067\u3059\u3002\r\nCockatoo\u306f\u307e\u3060\u751f\u307e\u308c\u305f\u3070\u304b\u308a\u306e\u30d7\u30ed\u30c0\u30af\u30c8\u3067\u92ed\u610f\u6539\u5584\u4e2d\u3067\u3059\u3002\r\n\r\n\u4f55\u304b\u304a\u6c17\u3065\u304d\u306e\u70b9\u306a\u3069\u304c\u3042\u308a\u307e\u3057\u305f\u3089\u304a\u6c17\u8efd\u306b\u304a\u554f\u3044\u5408\u308f\u305b\u304f\u3060\u3055\u3044\uff01\r\n\r\n\u3053\u3053\u307e\u3067\u304a\u4ed8\u304d\u5408\u3044\u9802\u304d\u3042\u308a\u304c\u3068\u3046\u3054\u3056\u3044\u307e\u3057\u305f\u3002","contents":[{"tag":"h2","attr":[],"children":[{"tag":"text","text":"\u524d\u56de\r"}]},{"tag":"div","attr":{"class":"h2"},"children":[{"tag":"ul","attr":[],"children":[{"tag":"li","attr":[],"children":[{"tag":"text","text":""},{"tag":"a","attr":{"href":"\/view\/\u30c1\u30e5\u30fc\u30c8\u30ea\u30a2\u30eb\u30fb\u30a2\u30af\u30b7\u30e7\u30f3\u30c7\u30fc\u30e2\u30f3\u5206\u96e2"},"children":[{"tag":"text","text":"\u30c1\u30e5\u30fc\u30c8\u30ea\u30a2\u30eb\u30fb\u30a2\u30af\u30b7\u30e7\u30f3\u30c7\u30fc\u30e2\u30f3\u5206\u96e2"}]},{"tag":"text","text":"\r"}]}]},{"tag":"text","children":[{"tag":"text","text":"\r"},{"tag":"br","text":""}]}]},{"tag":"h2","attr":[],"children":[{"tag":"text","text":"\u89e3\u8aac\r"}]},{"tag":"div","attr":{"class":"h2"},"children":[{"tag":"text","children":[{"tag":"text","text":"\u9577\u304b\u3063\u305f\u30c1\u30e5\u30fc\u30c8\u30ea\u30a2\u30eb\u3082\u3053\u308c\u3067\u6700\u5f8c\u3067\u3059\u3002\r"},{"tag":"br","text":""}]},{"tag":"text","children":[{"tag":"text","text":"\u4eca\u56de\u306f\u3001\u5206\u96e2\u3057\u305f\u30a2\u30af\u30b7\u30e7\u30f3\u30c7\u30fc\u30e2\u30f3\u3092Zookeeper\u3067\u66f4\u306b\u758e\u7d50\u5408\u306b\u3057\u307e\u3059\u3002\r"},{"tag":"br","text":""}]},{"tag":"text","children":[{"tag":"text","text":"\r"},{"tag":"br","text":""}]}]},{"tag":"h2","attr":[],"children":[{"tag":"text","text":"\u6d41\u308c\r"}]},{"tag":"div","attr":{"class":"h2"},"children":[{"tag":"ol","attr":[],"children":[{"tag":"li","attr":[],"children":[{"tag":"text","text":"Zookeeper\u3092\u7acb\u3066\u308b\r"}]},{"tag":"li","attr":[],"children":[{"tag":"text","text":"Cockatoo\u306bZoo\u9023\u643a\u7528\u30e2\u30b8\u30e5\u30fc\u30eb\u3092\u8ffd\u52a0\r"}]},{"tag":"li","attr":[],"children":[{"tag":"text","text":"Cockatoo\u8a2d\u5b9a\u3067Zookeeper\u3092\u6307\u5b9a\r"}]},{"tag":"li","attr":[],"children":[{"tag":"text","text":"Action\u3092\u518d\u8d77\u52d5\u3057Zookeeper\u3078\u767b\u9332\u3055\u305b\u308b"},{"tag":"span","attr":{"style":"color:#FF0000"},"children":[{"tag":"text","text":"\u203b\u672c\u6765\u306f\u5225\u30b5\u30fc\u30d0\u306b\u7acb\u3066\u308b\u3060\u3051\u3067\u843d\u3068\u3059\u5fc5\u8981\u306f\u306a\u3044"}]},{"tag":"text","text":"\r"}]},{"tag":"li","attr":[],"children":[{"tag":"text","text":"Zookeeper\u30af\u30e9\u30a4\u30a2\u30f3\u30c8\u30c7\u30fc\u30e2\u30f3\u3092\u7acb\u3066\u308b\r"}]},{"tag":"li","attr":[],"children":[{"tag":"text","text":"Cockatoo\u8a2d\u5b9a\u304b\u3089wiki-action\u306e\u9759\u7684\u30eb\u30fc\u30c8\u6307\u5b9a\u3092\u524a\u9664\r"}]},{"tag":"li","attr":[],"children":[{"tag":"text","text":"Gateway\u3092\u518d\u8d77\u52d5\u3057Zookeeper\u3092\u53c2\u7167\u3055\u305b\u308b\r"}]}]},{"tag":"text","children":[{"tag":"text","text":"\r"},{"tag":"br","text":""}]}]},{"tag":"h2","attr":[],"children":[{"tag":"text","text":"\u30c1\u30e5\u30fc\u30c8\u30ea\u30a2\u30eb\r"}]},{"tag":"div","attr":{"class":"h2"},"children":[{"tag":"h3","attr":[],"children":[{"tag":"text","text":"Zookeeper\u3092\u7acb\u3066\u308b\r"}]},{"tag":"div","attr":{"class":"h3"},"children":[{"tag":"text","children":[{"tag":"text","text":"\u307e\u305a\u306fZookeeper\u304c\u7121\u3044\u3068\u59cb\u307e\u308a\u307e\u305b\u3093\u3002\r"},{"tag":"br","text":""}]},{"tag":"dl","attr":[],"children":[{"tag":"dt","attr":[],"children":[{"tag":"text","text":"\u30b3\u30de\u30f3\u30c9"}]},{"tag":"dd","attr":[],"children":[{"tag":"text","text":"~\/.capkg\/config\/capkg.sh install -p wiki-zookeeper -r <\u30a4\u30f3\u30b9\u30c8\u30fc\u30eb\u5148\u30db\u30b9\u30c8>\r"}]}]},{"tag":"pre","attr":[],"children":[{"tag":"text","text":"\u4f8b>"},{"tag":"text","text":"~\/.capkg\/config\/capkg.sh install -p wiki-zookeeper -r localhost"}]},{"tag":"text","children":[{"tag":"text","text":"\r"},{"tag":"br","text":""}]},{"tag":"h4","attr":[],"children":[{"tag":"text","text":"\u78ba\u8a8d\r"}]},{"tag":"div","attr":{"class":"h4"},"children":[{"tag":"pre","attr":[],"children":[{"tag":"text","text":"\/usr\/local\/zookeeper\/bin\/zkCli.sh <<<'ls \/'"}]},{"tag":"text","children":[{"tag":"text","text":"[zookeeper]\u3068\u3044\u3046\u30c7\u30a3\u30ec\u30af\u30c8\u30ea\u304c\u898b\u3048\u307e\u3059\r"},{"tag":"br","text":""}]},{"tag":"text","children":[{"tag":"text","text":"\r"},{"tag":"br","text":""}]}]}]},{"tag":"h3","attr":[],"children":[{"tag":"text","text":"Cockatoo\u306bZoo\u9023\u643a\u7528\u30e2\u30b8\u30e5\u30fc\u30eb\u3092\u8ffd\u52a0\r"}]},{"tag":"div","attr":{"class":"h3"},"children":[{"tag":"dl","attr":[],"children":[{"tag":"dt","attr":[],"children":[{"tag":"text","text":"\u30b3\u30de\u30f3\u30c9"}]},{"tag":"dd","attr":[],"children":[{"tag":"text","text":"~\/.capkg\/config\/capkg.sh install -p cockatoo-utils-zoo -r <\u30a4\u30f3\u30b9\u30c8\u30fc\u30eb\u5148\u30db\u30b9\u30c8>\r"}]}]},{"tag":"pre","attr":[],"children":[{"tag":"text","text":"\u4f8b>"},{"tag":"text","text":"~\/.capkg\/config\/capkg.sh install -p cockatoo-utils-zoo -r localhost"}]},{"tag":"text","children":[{"tag":"text","text":"\r"},{"tag":"br","text":""}]}]},{"tag":"h3","attr":[],"children":[{"tag":"text","text":"Cockatoo\u8a2d\u5b9a\u3067Zookeeper\u3092\u6307\u5b9a\r"}]},{"tag":"div","attr":{"class":"h3"},"children":[{"tag":"text","children":[{"tag":"text","text":"Zookeeper\u306e\u5834\u6240\u3092\u4e0e\u3048\u3066\u3042\u3052\u307e\u3059\u3002\r"},{"tag":"br","text":""}]},{"tag":"h4","attr":[],"children":[{"tag":"text","text":"\/usr\/local\/cockatoo\/config.php \u3092\u7de8\u96c6\r"}]},{"tag":"div","attr":{"class":"h4"},"children":[{"tag":"div","attr":{"class":"h5"},"children":[{"tag":"h6","attr":[],"children":[{"tag":"text","text":"BEFORE\r"}]},{"tag":"div","attr":{"class":"h6"},"children":[{"tag":"pre","attr":[],"children":[{"tag":"text","text":"     self::$UseZookeeper        = false;"}]}]},{"tag":"h6","attr":[],"children":[{"tag":"text","text":"AFTER\r"}]},{"tag":"div","attr":{"class":"h6"},"children":[{"tag":"pre","attr":[],"children":[{"tag":"text","text":"     self::$UseZookeeper        = array('127.0.0.1:2181');"}]},{"tag":"text","children":[{"tag":"text","text":"\r"},{"tag":"br","text":""}]}]}]}]}]},{"tag":"h3","attr":[],"children":[{"tag":"text","text":"Action\u3092\u518d\u8d77\u52d5\u3057Zookeeper\u3078\u767b\u9332\u3055\u305b\u308b\r"}]},{"tag":"div","attr":{"class":"h3"},"children":[{"tag":"text","children":[{"tag":"text","text":"\u672c\u6765\u306f\u518d\u8d77\u52d5\u3067\u306f\u306a\u304f\u3001\u5225\u306e\u30b5\u30fc\u30d0\u3078\u306e\u69cb\u7bc9\u3067\u3059\u3002\r"},{"tag":"br","text":""}]},{"tag":"text","children":[{"tag":"text","text":"\u305d\u306e\u5834\u5408\u306b\u306f\u4e00\u5207\u65e2\u5b58\u306e\u30b5\u30fc\u30d3\u30b9\u3078\u306e\u5f71\u97ff\u306f\u4e0e\u3048\u307e\u305b\u3093\u3002\r"},{"tag":"br","text":""}]},{"tag":"text","children":[{"tag":"text","text":"\r"},{"tag":"br","text":""}]},{"tag":"h4","attr":[],"children":[{"tag":"text","text":"\u30a2\u30af\u30b7\u30e7\u30f3\u30c7\u30fc\u30e2\u30f3\u518d\u8d77\u52d5\r"}]},{"tag":"div","attr":{"class":"h4"},"children":[{"tag":"text","children":[{"tag":"text","text":"confing.php\u306b\u6307\u5b9a\u3057\u305fZookeeper\u3078\u81ea\u5206\u3092\u767b\u9332\u3059\u308b\u3088\u3046\u306b\u306a\u308a\u307e\u3059\u3002\r"},{"tag":"br","text":""}]},{"tag":"pre","attr":[],"children":[{"tag":"text","text":"sudo -u daemon \/usr\/local\/cockatoo\/daemon\/sbin\/action_controller.bash restart"}]},{"tag":"text","children":[{"tag":"text","text":"\r"},{"tag":"br","text":""}]}]},{"tag":"h4","attr":[],"children":[{"tag":"text","text":"\u78ba\u8a8d\r"}]},{"tag":"div","attr":{"class":"h4"},"children":[{"tag":"text","children":[{"tag":"text","text":"Zookeeper\u3092\u76f4\u63a5\u8997\u3044\u3066\u898b\u307e\u3059\r"},{"tag":"br","text":""}]},{"tag":"pre","attr":[],"children":[{"tag":"text","text":"\/usr\/local\/zookeeper\/bin\/zkCli.sh <<<'ls \/cockatoo\/action:\\\\wiki-action\\'"}]},{"tag":"text","children":[{"tag":"text","text":"[127.0.0.1:22651]\u304c\u767b\u9332\u3055\u308c\u3066\u3044\u307e\u3059\u3002\r"},{"tag":"br","text":""}]},{"tag":"text","children":[{"tag":"text","text":"\u3053\u308c\u306faction.conf\u3067\u6307\u5b9a\u3057\u305f\u5185\u5bb9\u306a\u306e\u3067\u3059\u304c\u3001\u52ff\u8ad6\u3001\u672c\u6765\u306f127.0.0.1\u3067\u306f\u306a\u304f\u5b9f\u969b\u306eIP\u3092\u6307\u5b9a\u3057\u307e\u3059\u3002\r"},{"tag":"br","text":""}]},{"tag":"text","children":[{"tag":"text","text":"\r"},{"tag":"br","text":""}]}]}]},{"tag":"h3","attr":[],"children":[{"tag":"text","text":"Zookeeper\u30af\u30e9\u30a4\u30a2\u30f3\u30c8\u30c7\u30fc\u30e2\u30f3\u3092\u7acb\u3066\u308b\r"}]},{"tag":"div","attr":{"class":"h3"},"children":[{"tag":"text","children":[{"tag":"text","text":"Zookeeper\u304b\u3089\u60c5\u5831\u3092\u62fe\u3063\u3066\u304f\u308b\u30c7\u30fc\u30e2\u30f3\u3067\u3059\u3002\r"},{"tag":"br","text":""}]},{"tag":"text","children":[{"tag":"text","text":"Zookeeper\u306f\u5fdc\u7b54\u304c\u9045\u304f\u30aa\u30f3\u30e9\u30a4\u30f3\u51e6\u7406\u4e2d\u306b\u554f\u5408\u305b\u308b\u3068\u30d1\u30d5\u30a9\u30fc\u30de\u30f3\u30b9\u304c\u51fa\u306a\u3044\u306e\u3067\u3059\u3002\r"},{"tag":"br","text":""}]},{"tag":"dl","attr":[],"children":[{"tag":"dt","attr":[],"children":[{"tag":"text","text":"\u30b3\u30de\u30f3\u30c9"}]},{"tag":"dd","attr":[],"children":[{"tag":"text","text":"~\/.capkg\/config\/capkg.sh install -p cockatoo-zookeeper -r <\u30a4\u30f3\u30b9\u30c8\u30fc\u30eb\u5148\u30db\u30b9\u30c8>\r"}]}]},{"tag":"pre","attr":[],"children":[{"tag":"text","text":"\u4f8b>"},{"tag":"text","text":"~\/.capkg\/config\/capkg.sh install -p cockatoo-zookeeper -r localhost"}]},{"tag":"h4","attr":[],"children":[{"tag":"text","text":"\u30c7\u30fc\u30e2\u30f3\u8d77\u52d5\r"}]},{"tag":"div","attr":{"class":"h4"},"children":[{"tag":"pre","attr":[],"children":[{"tag":"text","text":"sudo -u daemon \/usr\/local\/cockatoo\/daemon\/sbin\/zookeeper_watch.bash start"}]},{"tag":"text","children":[{"tag":"text","text":"\r"},{"tag":"br","text":""}]}]},{"tag":"h4","attr":[],"children":[{"tag":"text","text":"\u78ba\u8a8d\r"}]},{"tag":"div","attr":{"class":"h4"},"children":[{"tag":"text","children":[{"tag":"text","text":"Zookeeper\u306e\u5185\u5bb9\u304c\u4ee5\u4e0b\u306e\u30d5\u30a1\u30a4\u30eb\u306b\u30c0\u30f3\u30d7\u3055\u308c\u307e\u3059\r"},{"tag":"br","text":""}]},{"tag":"text","children":[{"tag":"text","text":"\/usr\/local\/cockatoo\/daemon\/etc\/zoo.json\r"},{"tag":"br","text":""}]},{"tag":"text","children":[{"tag":"text","text":"\r"},{"tag":"br","text":""}]}]}]},{"tag":"h3","attr":[],"children":[{"tag":"text","text":"Cockatoo\u8a2d\u5b9a\u304b\u3089wiki-action\u306e\u9759\u7684\u30eb\u30fc\u30c8\u6307\u5b9a\u3092\u524a\u9664\r"}]},{"tag":"div","attr":{"class":"h3"},"children":[{"tag":"text","children":[{"tag":"text","text":"Gateway\u3092Zookeeper\u3078\u5207\u308a\u66ff\u3048\u308b\u6e96\u5099\r"},{"tag":"br","text":""}]},{"tag":"h4","attr":[],"children":[{"tag":"text","text":"\/usr\/local\/cockatoo\/config.php \u3092\u7de8\u96c6\r"}]},{"tag":"div","attr":{"class":"h4"},"children":[{"tag":"div","attr":{"class":"h5"},"children":[{"tag":"h6","attr":[],"children":[{"tag":"text","text":"BEFORE\r"}]},{"tag":"div","attr":{"class":"h6"},"children":[{"tag":"pre","attr":[],"children":[{"tag":"text","text":" self::$BeakLocation = array ("},{"tag":"text","text":"   'cms:\/\/services-cms\/'           => array(''),"},{"tag":"text","text":"   'layout:\/\/core-layout\/'         => array('127.0.0.1:27017'),"},{"tag":"text","text":"   'component:\/\/core-component\/'   => array('127.0.0.1:27017'),"},{"tag":"text","text":"   'static:\/\/core-static\/'         => array('127.0.0.1:27017'),"},{"tag":"text","text":"   'layout:\/\/wiki-layout\/'         => array('127.0.0.1:27017'),"},{"tag":"text","text":"   'component:\/\/wiki-component\/'   => array('127.0.0.1:27017'),"},{"tag":"text","text":"   'static:\/\/wiki-static\/'         => array('127.0.0.1:27017'),"},{"tag":"text","text":"   'storage:\/\/wiki-storage\/'       => array('127.0.0.1:27017'),"},{"tag":"text","text":"   'action:\/\/wiki-action\/'         => array('127.0.0.1:22651'),"},{"tag":"text","text":"   'session:\/\/wiki-session\/'       => array('127.0.0.1:11211')"},{"tag":"text","text":"   );"}]}]},{"tag":"h6","attr":[],"children":[{"tag":"text","text":"AFTER\r"}]},{"tag":"div","attr":{"class":"h6"},"children":[{"tag":"pre","attr":[],"children":[{"tag":"text","text":" self::$BeakLocation = array ("},{"tag":"text","text":"   'cms:\/\/services-cms\/'           => array(''),"},{"tag":"text","text":"   'layout:\/\/core-layout\/'         => array('127.0.0.1:27017'),"},{"tag":"text","text":"   'component:\/\/core-component\/'   => array('127.0.0.1:27017'),"},{"tag":"text","text":"   'static:\/\/core-static\/'         => array('127.0.0.1:27017'),"},{"tag":"text","text":"   'layout:\/\/wiki-layout\/'         => array('127.0.0.1:27017'),"},{"tag":"text","text":"   'component:\/\/wiki-component\/'   => array('127.0.0.1:27017'),"},{"tag":"text","text":"   'static:\/\/wiki-static\/'         => array('127.0.0.1:27017'),"},{"tag":"text","text":"   'storage:\/\/wiki-storage\/'       => array('127.0.0.1:27017'),"}]},{"tag":"text","children":[{"tag":"text","text":"\/\/    'action:\/\/wiki-action\/'         => array('127.0.0.1:22651'), \/\/ *** HERE (DELETE) ***\r"},{"tag":"br","text":""}]},{"tag":"pre","attr":[],"children":[{"tag":"text","text":"   'session:\/\/wiki-session\/'       => array('127.0.0.1:11211')"},{"tag":"text","text":"   );"},{"tag":"text","text":""}]},{"tag":"text","children":[{"tag":"text","text":"\r"},{"tag":"br","text":""}]}]}]}]}]},{"tag":"h3","attr":[],"children":[{"tag":"text","text":"Gateway\u3092\u518d\u8d77\u52d5\u3057\u5909\u66f4\u3092\u53cd\u6620\r"}]},{"tag":"div","attr":{"class":"h3"},"children":[{"tag":"pre","attr":[],"children":[{"tag":"text","text":"sudo -u daemon \/usr\/local\/cockatoo\/daemon\/sbin\/gateway_controller.bash  restart"}]},{"tag":"text","children":[{"tag":"text","text":"\r"},{"tag":"br","text":""}]},{"tag":"h4","attr":[],"children":[{"tag":"text","text":"\u78ba\u8a8d\r"}]},{"tag":"div","attr":{"class":"h4"},"children":[{"tag":"text","children":[{"tag":"text","text":"\u3053\u308c\u3067\u7121\u505c\u6b62\u3067\u5207\u308a\u66ff\u3048\u304c\u51fa\u6765\u307e\u3057\u305f\u3002\r"},{"tag":"br","text":""}]},{"tag":"text","children":[{"tag":"text","text":"\r"},{"tag":"br","text":""}]},{"tag":"ul","attr":[],"children":[{"tag":"li","attr":[],"children":[{"tag":"text","text":"\u4ee5\u4e0b\u306b\u30a2\u30af\u30bb\u30b9\uff08\u304d\u3061\u3093\u3068\u8868\u793a\u3055\u308c\u308b\uff09\r"}]}]},{"tag":"pre","attr":[],"children":[{"tag":"text","text":"http:\/\/<\u30a4\u30f3\u30b9\u30c8\u30fc\u30eb\u5148\u30db\u30b9\u30c8>\/"}]},{"tag":"text","children":[{"tag":"text","text":"\r"},{"tag":"br","text":""}]}]},{"tag":"h4","attr":[],"children":[{"tag":"text","text":"\u89e3\u8aac\uff11\r"}]},{"tag":"div","attr":{"class":"h4"},"children":[{"tag":"text","children":[{"tag":"text","text":"\u5b9f\u306f\u3001Zookeeper\u30af\u30e9\u30a4\u30a2\u30f3\u30c8\u30c7\u30fc\u30e2\u30f3\u304c\u6b7b\u3093\u3067\u3082\u76f4\u3061\u306b\u969c\u5bb3\u306b\u306f\u306a\u308a\u307e\u305b\u3093\u3002\r"},{"tag":"br","text":""}]},{"tag":"pre","attr":[],"children":[{"tag":"text","text":"sudo -u daemon \/usr\/local\/cockatoo\/daemon\/sbin\/zookeeper_watch.bash stop"}]},{"tag":"text","children":[{"tag":"text","text":"\r"},{"tag":"br","text":""}]},{"tag":"ul","attr":[],"children":[{"tag":"li","attr":[],"children":[{"tag":"text","text":"\u4ee5\u4e0b\u306b\u30a2\u30af\u30bb\u30b9\uff08\u304d\u3061\u3093\u3068\u8868\u793a\u3055\u308c\u308b\uff09\r"}]}]},{"tag":"pre","attr":[],"children":[{"tag":"text","text":"http:\/\/<\u30a4\u30f3\u30b9\u30c8\u30fc\u30eb\u5148\u30db\u30b9\u30c8>\/"}]},{"tag":"text","children":[{"tag":"text","text":"\r"},{"tag":"br","text":""}]},{"tag":"text","children":[{"tag":"text","text":"\u3053\u308c\u306f\u30c0\u30f3\u30d7\u3055\u308c\u305fzoo.json\u304c\u30ad\u30e3\u30c3\u30b7\u30e5\u3068\u3057\u3066\u6a5f\u80fd\u3057\u3066\u3044\u308b\u304b\u3089\u3067\u3059\u3002\r"},{"tag":"br","text":""}]},{"tag":"text","children":[{"tag":"text","text":"\r"},{"tag":"br","text":""}]},{"tag":"text","children":[{"tag":"text","text":"\u3057\u304b\u3057\u3053\u306e\u72b6\u614b\u3067Zookeeper\u306b\u5909\u66f4\u304c\u3042\u3063\u305f\u5834\u5408(\u3069\u3053\u304b\u306e\u30a2\u30af\u30b7\u30e7\u30f3\u304c\u6b7b\u3093\u3060\u7b49)\u306f\r"},{"tag":"br","text":""}]},{"tag":"text","children":[{"tag":"text","text":"Zookeeper\u306e\u5909\u5316\u306b\u8ffd\u968f\u3067\u304d\u305a\u306b\u969c\u5bb3\u3068\u306a\u3063\u3066\u3057\u307e\u3046\u306e\u3067\u6ce8\u610f\u3057\u3066\u304f\u3060\u3055\u3044\u3002\r"},{"tag":"br","text":""}]},{"tag":"text","children":[{"tag":"text","text":"\r"},{"tag":"br","text":""}]}]}]}]},{"tag":"h2","attr":[],"children":[{"tag":"text","text":"\u307e\u3068\u3081\r"}]},{"tag":"div","attr":{"class":"h2"},"children":[{"tag":"text","children":[{"tag":"text","text":"\u3053\u308c\u3067\u30c1\u30e5\u30fc\u30c8\u30ea\u30a2\u30eb\u306f\u7d42\u4e86\u3067\u3059\u3002\r"},{"tag":"br","text":""}]},{"tag":"text","children":[{"tag":"text","text":"Cockatoo\u306f\u307e\u3060\u751f\u307e\u308c\u305f\u3070\u304b\u308a\u306e\u30d7\u30ed\u30c0\u30af\u30c8\u3067\u92ed\u610f\u6539\u5584\u4e2d\u3067\u3059\u3002\r"},{"tag":"br","text":""}]},{"tag":"text","children":[{"tag":"text","text":"\r"},{"tag":"br","text":""}]},{"tag":"text","children":[{"tag":"text","text":"\u4f55\u304b\u304a\u6c17\u3065\u304d\u306e\u70b9\u306a\u3069\u304c\u3042\u308a\u307e\u3057\u305f\u3089\u304a\u6c17\u8efd\u306b\u304a\u554f\u3044\u5408\u308f\u305b\u304f\u3060\u3055\u3044\uff01\r"},{"tag":"br","text":""}]},{"tag":"text","children":[{"tag":"text","text":"\r"},{"tag":"br","text":""}]},{"tag":"text","children":[{"tag":"text","text":"\u3053\u3053\u307e\u3067\u304a\u4ed8\u304d\u5408\u3044\u9802\u304d\u3042\u308a\u304c\u3068\u3046\u3054\u3056\u3044\u307e\u3057\u305f\u3002"},{"tag":"br","text":""}]}]}],"author":"crumbjp","_u":"%E3%83%81%E3%83%A5%E3%83%BC%E3%83%88%E3%83%AA%E3%82%A2%E3%83%AB%E3%83%BBZookeeper%E9%80%A3%E6%90%BA"}