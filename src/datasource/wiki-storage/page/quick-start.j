{"title":"quick-start","origin":"*\u30bb\u30c3\u30c8\u30a2\u30c3\u30d7\r\n\u5927\u898f\u6a21\u30b5\u30a4\u30c8\u306e\u5b9f\u904b\u7528\u306b\u306f\u5411\u304b\u306a\u3044\u6700\u77ed\u624b\u9806\u3067\u3059\u3002\r\n\u5b9f\u969b\u306e\u904b\u7528\u3092\u76ee\u6307\u3057\u305f\u624b\u9806\u306f\u3053\u3061\u3089[[for-service|Cockatoo\u69cb\u7bc9]]\r\n***\u624b\u9806\r\n+Apache\r\n+PHP\r\n+ClierSilver\r\n+PHP\u62e1\u5f35\r\n+Cockatoo\r\n\r\n**Debian\/Ubuntu\u7de8\r\n\r\n**CentOS\/Fedora\u7de8&anchor(centos);\r\nApache\u30a4\u30f3\u30b9\u30c8\u30fc\u30eb\r\n yum install httpd-devel\r\nPHP\u30a4\u30f3\u30b9\u30c8\u30fc\u30eb\r\n yum install php53-devel php53-process\r\nClearsilver\u30a4\u30f3\u30b9\u30c8\u30fc\u30eb\r\n yum install clearsilver-devel\r\nPHP-extention\u30d3\u30eb\u30c9\uff06\u30a4\u30f3\u30b9\u30c8\u30fc\u30eb\r\n wget http:\/\/www.geodata.soton.ac.uk\/software\/php_clearsilver\/php-clearsilver-0.4.tar.gz -O php-clearsilver-0.4.tar.gz\r\n tar xzvf php-clearsilver-0.4.tar.gz\r\n cd php-clearsilver-0.4\r\n \/usr\/local\/php-5.3.8\/bin\/phpize\r\n .\/configure --with-php-config=\/usr\/bin\/php-config --with-clearsilver=\/usr\r\n make\r\n make install\r\n echo 'extension=clearsilver.so' > \/etc\/php.d\/clearsilver.ini\r\nCockatoo\u53d6\u5f97\r\n cd \/tmp\r\n git clone git@github.com:cockatoo-org\/Cockatoo.git\r\nCockatoo\u8a2d\u5b9a\r\n cd \/tmp\/cockatoo\r\n # \u30bd\u30fc\u30b9\u914d\u5099\uff06\u6a29\u9650\u8a2d\u5b9a\r\n cp -rT .\/src \/usr\/local\/cockatoo\r\n chown apache    \/usr\/local\/cockatoo\/logs\r\n chmod apache -R \/usr\/local\/cockatoo\/datasource\r\n # HTTPD\u8a2d\u5b9a\r\n cp .\/settings\/httpd\/httpd-cockatoo.conf \/etc\/httpd\/conf.d\/\r\n cp .\/settings\/htaccess \/usr\/local\/cockatoo\/www\/.htaccess\r\n # PHP\u8a2d\u5b9a\r\n cp .\/settings\/php\/cockatoo.ini          \/etc\/php\/conf.d\/\r\n # Cockatoo wiki \u7528\u8a2d\u5b9a\r\n cp .\/packages\/wiki-sample\/config.php.local \/usr\/local\/cockatoo\/config.php\r\nApache\u8d77\u52d5\r\n \/etc\/init.d\/httpd start\r\nwiki\u304c\u8868\u793a\u3055\u308c\u308c\u3070\u5b8c\u4e86\r\n http:\/\/<hostname>\/view\r\n\r\n**\u30c1\u30e5\u30fc\u30c8\u30ea\u30a2\u30eb\u3078\r\n[[\u30c1\u30e5\u30fc\u30c8\u30ea\u30a2\u30eb\u30fbCMS]]\r\n\r\n","contents":[{"tag":"div","attr":{"class":"ih"},"children":[{"tag":"a","attr":{"class":"visible toggle","href":"#"},"children":[{"tag":"text","text":""}]},{"tag":"ol","attr":{"class":"ih2"},"children":[{"tag":"li","attr":{"class":"ih"},"children":[{"tag":"a","attr":{"href":"#\u30bb\u30c3\u30c8\u30a2\u30c3\u30d7"},"children":[{"tag":"text","text":"\u30bb\u30c3\u30c8\u30a2\u30c3\u30d7"}]}]},{"tag":"ol","attr":{"class":"ih3"},"children":[{"tag":"ul","attr":{"class":"ih4"},"children":[{"tag":"li","attr":{"class":"ih"},"children":[{"tag":"a","attr":{"href":"#\u624b\u9806"},"children":[{"tag":"text","text":"\u624b\u9806"}]}]}]},{"tag":"li","attr":{"class":"ih"},"children":[{"tag":"a","attr":{"href":"#Debian\/Ubuntu\u7de8"},"children":[{"tag":"text","text":"Debian\/Ubuntu\u7de8"}]}]},{"tag":"li","attr":{"class":"ih"},"children":[{"tag":"a","attr":{"href":"#CentOS\/Fedora\u7de8&anchor(centos);"},"children":[{"tag":"text","text":"CentOS\/Fedora\u7de8&anchor(centos);"}]}]},{"tag":"li","attr":{"class":"ih"},"children":[{"tag":"a","attr":{"href":"#\u30c1\u30e5\u30fc\u30c8\u30ea\u30a2\u30eb\u3078"},"children":[{"tag":"text","text":"\u30c1\u30e5\u30fc\u30c8\u30ea\u30a2\u30eb\u3078"}]}]}]}]}]},{"tag":"div","attr":{"class":"hd1"},"children":[{"tag":"div","attr":{"class":"h2"},"children":[{"tag":"h2","attr":[],"children":[{"tag":"text","text":"\u30bb\u30c3\u30c8\u30a2\u30c3\u30d7"},{"tag":"a","attr":{"href":"#\u30bb\u30c3\u30c8\u30a2\u30c3\u30d7","name":"\u30bb\u30c3\u30c8\u30a2\u30c3\u30d7"},"children":[{"tag":"text","text":"+"}]}]}]},{"tag":"div","attr":{"class":"hd2"},"children":[{"tag":"text","attr":[],"children":[{"tag":"text","attr":[],"children":[{"tag":"text","text":"\u5927\u898f\u6a21\u30b5\u30a4\u30c8\u306e\u5b9f\u904b\u7528\u306b\u306f\u5411\u304b\u306a\u3044\u6700\u77ed\u624b\u9806\u3067\u3059\u3002"}]},{"tag":"br","text":""}]},{"tag":"text","attr":[],"children":[{"tag":"text","attr":[],"children":[{"tag":"text","text":"\u5b9f\u969b\u306e\u904b\u7528\u3092\u76ee\u6307\u3057\u305f\u624b\u9806\u306f\u3053\u3061\u3089"}]},{"tag":"a","attr":{"href":"\/wiki\/view\/for-service"},"children":[{"tag":"text","attr":[],"children":[{"tag":"text","text":"Cockatoo\u69cb\u7bc9"}]}]},{"tag":"text","attr":[],"children":[{"tag":"text","text":""}]},{"tag":"br","text":""}]},{"tag":"div","attr":{"class":"hd3"},"children":[{"tag":"div","attr":{"class":"h4"},"children":[{"tag":"h4","attr":[],"children":[{"tag":"text","text":"\u624b\u9806"},{"tag":"a","attr":{"href":"#\u624b\u9806","name":"\u624b\u9806"},"children":[{"tag":"text","text":"+"}]}]}]},{"tag":"div","attr":{"class":"hd4"},"children":[{"tag":"ol","attr":{"class":"ol0"},"children":[{"tag":"li","attr":{"class":"ol1"},"children":[{"tag":"text","attr":[],"children":[{"tag":"text","text":"Apache"}]}]},{"tag":"li","attr":{"class":"ol1"},"children":[{"tag":"text","attr":[],"children":[{"tag":"text","text":"PHP"}]}]},{"tag":"li","attr":{"class":"ol1"},"children":[{"tag":"text","attr":[],"children":[{"tag":"text","text":"ClierSilver"}]}]},{"tag":"li","attr":{"class":"ol1"},"children":[{"tag":"text","attr":[],"children":[{"tag":"text","text":"PHP\u62e1\u5f35"}]}]},{"tag":"li","attr":{"class":"ol1"},"children":[{"tag":"text","attr":[],"children":[{"tag":"text","text":"Cockatoo"}]}]}]},{"tag":"text","attr":[],"children":[{"tag":"text","attr":[],"children":[{"tag":"text","text":""}]},{"tag":"br","text":""}]}]}]},{"tag":"div","attr":{"class":"h3"},"children":[{"tag":"h3","attr":[],"children":[{"tag":"text","text":"Debian\/Ubuntu\u7de8"},{"tag":"a","attr":{"href":"#Debian\/Ubuntu\u7de8","name":"Debian\/Ubuntu\u7de8"},"children":[{"tag":"text","text":"+"}]}]}]},{"tag":"div","attr":{"class":"hd3"},"children":[{"tag":"text","attr":[],"children":[{"tag":"text","attr":[],"children":[{"tag":"text","text":""}]},{"tag":"br","text":""}]}]},{"tag":"div","attr":{"class":"h3"},"children":[{"tag":"h3","attr":[],"children":[{"tag":"text","text":"CentOS\/Fedora\u7de8&anchor(centos);"},{"tag":"a","attr":{"href":"#CentOS\/Fedora\u7de8&anchor(centos);","name":"CentOS\/Fedora\u7de8&anchor(centos);"},"children":[{"tag":"text","text":"+"}]}]}]},{"tag":"div","attr":{"class":"hd3"},"children":[{"tag":"text","attr":[],"children":[{"tag":"text","attr":[],"children":[{"tag":"text","text":"Apache\u30a4\u30f3\u30b9\u30c8\u30fc\u30eb"}]},{"tag":"br","text":""}]},{"tag":"pre","attr":[],"children":[{"tag":"text","text":" yum install httpd-devel\n"}]},{"tag":"text","attr":[],"children":[{"tag":"text","attr":[],"children":[{"tag":"text","text":"PHP\u30a4\u30f3\u30b9\u30c8\u30fc\u30eb"}]},{"tag":"br","text":""}]},{"tag":"pre","attr":[],"children":[{"tag":"text","text":" yum install php53-devel php53-process\n"}]},{"tag":"text","attr":[],"children":[{"tag":"text","attr":[],"children":[{"tag":"text","text":"Clearsilver\u30a4\u30f3\u30b9\u30c8\u30fc\u30eb"}]},{"tag":"br","text":""}]},{"tag":"pre","attr":[],"children":[{"tag":"text","text":" yum install clearsilver-devel\n"}]},{"tag":"text","attr":[],"children":[{"tag":"text","attr":[],"children":[{"tag":"text","text":"PHP-extention\u30d3\u30eb\u30c9\uff06\u30a4\u30f3\u30b9\u30c8\u30fc\u30eb"}]},{"tag":"br","text":""}]},{"tag":"pre","attr":[],"children":[{"tag":"text","text":" wget http:\/\/www.geodata.soton.ac.uk\/software\/php_clearsilver\/php-clearsilver-0.4.tar.gz -O php-clearsilver-0.4.tar.gz\n tar xzvf php-clearsilver-0.4.tar.gz\n cd php-clearsilver-0.4\n \/usr\/local\/php-5.3.8\/bin\/phpize\n .\/configure --with-php-config=\/usr\/bin\/php-config --with-clearsilver=\/usr\n make\n make install\n echo 'extension=clearsilver.so' > \/etc\/php.d\/clearsilver.ini\n"}]},{"tag":"text","attr":[],"children":[{"tag":"text","attr":[],"children":[{"tag":"text","text":"Cockatoo\u53d6\u5f97"}]},{"tag":"br","text":""}]},{"tag":"pre","attr":[],"children":[{"tag":"text","text":" cd \/tmp\n git clone git@github.com:cockatoo-org\/Cockatoo.git\n"}]},{"tag":"text","attr":[],"children":[{"tag":"text","attr":[],"children":[{"tag":"text","text":"Cockatoo\u8a2d\u5b9a"}]},{"tag":"br","text":""}]},{"tag":"pre","attr":[],"children":[{"tag":"text","text":" cd \/tmp\/cockatoo\n # \u30bd\u30fc\u30b9\u914d\u5099\uff06\u6a29\u9650\u8a2d\u5b9a\n cp -rT .\/src \/usr\/local\/cockatoo\n chown apache    \/usr\/local\/cockatoo\/logs\n chmod apache -R \/usr\/local\/cockatoo\/datasource\n # HTTPD\u8a2d\u5b9a\n cp .\/settings\/httpd\/httpd-cockatoo.conf \/etc\/httpd\/conf.d\/\n cp .\/settings\/htaccess \/usr\/local\/cockatoo\/www\/.htaccess\n # PHP\u8a2d\u5b9a\n cp .\/settings\/php\/cockatoo.ini          \/etc\/php\/conf.d\/\n # Cockatoo wiki \u7528\u8a2d\u5b9a\n cp .\/packages\/wiki-sample\/config.php.local \/usr\/local\/cockatoo\/config.php\n"}]},{"tag":"text","attr":[],"children":[{"tag":"text","attr":[],"children":[{"tag":"text","text":"Apache\u8d77\u52d5"}]},{"tag":"br","text":""}]},{"tag":"pre","attr":[],"children":[{"tag":"text","text":" \/etc\/init.d\/httpd start\n"}]},{"tag":"text","attr":[],"children":[{"tag":"text","attr":[],"children":[{"tag":"text","text":"wiki\u304c\u8868\u793a\u3055\u308c\u308c\u3070\u5b8c\u4e86"}]},{"tag":"br","text":""}]},{"tag":"pre","attr":[],"children":[{"tag":"text","text":" http:\/\/<hostname>\/view\n"}]},{"tag":"text","attr":[],"children":[{"tag":"text","attr":[],"children":[{"tag":"text","text":""}]},{"tag":"br","text":""}]}]},{"tag":"div","attr":{"class":"h3"},"children":[{"tag":"h3","attr":[],"children":[{"tag":"text","text":"\u30c1\u30e5\u30fc\u30c8\u30ea\u30a2\u30eb\u3078"},{"tag":"a","attr":{"href":"#\u30c1\u30e5\u30fc\u30c8\u30ea\u30a2\u30eb\u3078","name":"\u30c1\u30e5\u30fc\u30c8\u30ea\u30a2\u30eb\u3078"},"children":[{"tag":"text","text":"+"}]}]}]},{"tag":"div","attr":{"class":"hd3"},"children":[{"tag":"text","attr":[],"children":[{"tag":"text","attr":[],"children":[{"tag":"text","text":""}]},{"tag":"a","attr":{"href":"\/wiki\/view\/\u30c1\u30e5\u30fc\u30c8\u30ea\u30a2\u30eb\u30fbCMS"},"children":[{"tag":"text","attr":[],"children":[{"tag":"text","text":"\u30c1\u30e5\u30fc\u30c8\u30ea\u30a2\u30eb\u30fbCMS"}]}]},{"tag":"text","attr":[],"children":[{"tag":"text","text":""}]},{"tag":"br","text":""}]},{"tag":"text","attr":[],"children":[{"tag":"text","attr":[],"children":[{"tag":"text","text":""}]},{"tag":"br","text":""}]},{"tag":"text","attr":[],"children":[{"tag":"text","attr":[],"children":[{"tag":"text","text":""}]},{"tag":"br","text":""}]}]}]}]}],"author":"tool","_u":"quick-start"}