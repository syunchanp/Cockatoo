{
"title":"Beak\u30c7\u30fc\u30bf\u79fb\u884c\u30c4\u30fc\u30eb",
"origin":"*\u30c4\u30fc\u30eb\r\n**beak_import\r\n[[https:\/\/github.com\/cockatoo-org\/Cockatoo\/blob\/master\/src\/tools\/beak\/beak_import.php|beak_import.php]]\r\n***\u6982\u8981\r\nCockatoo\u304c\u30b5\u30fc\u30c9\u30d1\u30fc\u30c6\u30a3JS\u30e9\u30a4\u30d6\u30e9\u30ea\u3092\u914d\u5e03\u3059\u308b\u969b\u306a\u3069\r\n\u30ed\u30fc\u30ab\u30eb\u30d5\u30a1\u30a4\u30eb\u30b7\u30b9\u30c6\u30e0\u306e\u69cb\u9020\u3092\u305d\u306e\u307e\u307e\u306e\u5f62\u3067Beak\u306b\u53d6\u8fbc\u3080\u30c4\u30fc\u30eb\u3067\u3059\u3002\r\n\r\n***\u4f7f\u7528\u65b9\u6cd5\r\n\u5c02\u7528\u306e\u8d77\u52d5\u30b9\u30af\u30ea\u30d7\u30c8\u7d4c\u7531\u3067\u5229\u7528\u3057\u307e\u3059\u3002\r\n****\u30d5\u30a1\u30a4\u30eb\u6307\u5b9a\u53d6\u308a\u8fbc\u307f\r\n&b(3){\/usr\/local\/cockatoo\/tools\/beak\/beak_import.bash --src .\/js\/jquery-1.4.4.min.js  --brl static:\/\/wiki-static\/default\/js\/jquery-1.4.4.min.js --to file  --exp 31536000 --type text\/javascript --charset UTF-8};\r\n\r\n:DB\u540d:wiki-static\r\n\r\n:\u30b3\u30ec\u30af\u30b7\u30e7\u30f3\u540d:default\r\n\r\n:Key\u540d:js\/jquery-1.4.4.min.js\r\n=> http:\/\/<hostname>\/_s_\/wiki\/default\/js\/jquery-1.4.4.min.js\r\n\r\n:\u53d6\u8fbc\u308a\u8fbc\u307f\u5148:\u30ed\u30fc\u30ab\u30eb\u30d5\u30a1\u30a4\u30eb(BeakFile)\r\n\r\n:Expires\u30d8\u30c3\u30c0:+31536000\u79d2(+1\u5e74)\r\n\r\n:MimeType:\"text\/javascript\"\r\n\r\n:\u6587\u5b57\u30b3\u30fc\u30c9:UTF-8\r\n\r\n****\u30d5\u30a1\u30a4\u30eb\u6307\u5b9a\u53d6\u308a\u8fbc\u307f(\u81ea\u52d5\u5224\u5b9a)\r\n&b(3){\/usr\/local\/cockatoo\/tools\/beak\/beak_import.bash --src .\/js\/jquery-1.4.4.min.js  --brl static:\/\/wiki-static\/default\/js\/jquery-1.4.4.min.js --to file};\r\n\r\n:Expires\u30d8\u30c3\u30c0:\u7121\u3057\r\n\r\n\u4ed6\u306e\u9805\u76ee\u306f\u4e0a\u8a18\u3068\u540c\u3058\r\n\r\n****\u518d\u5e30\u53d6\u8fbc\u307f\r\n&b(3){\/usr\/local\/cockatoo\/tools\/beak\/beak_import.bash --src .\/js  --brl static:\/\/wiki-static\/default\/js --to file  --exp 86400};\r\n\r\n:DB\u540d:wiki-static\r\n\r\n:\u30b3\u30ec\u30af\u30b7\u30e7\u30f3\u540d:default\r\n\r\n:Key\u540d:js\/(\u203b\u4ee5\u4e0b\u5168\u3066)\r\n=> http:\/\/<hostname>\/_s_\/wiki\/default\/js\/(\u203b\u4ee5\u4e0b\u5168\u3066)\r\n\r\n:Expires\u30d8\u30c3\u30c0:+86400\u79d2(+1\u65e5)\r\n\r\n:MimeType:\u81ea\u52d5\u5224\u5b9a\r\n\r\n:\u6587\u5b57\u30b3\u30fc\u30c9:\u81ea\u52d5\u5224\u5b9a\r\n\r\n\r\n**beak_mv\r\n[[https:\/\/github.com\/cockatoo-org\/Cockatoo\/blob\/master\/src\/tools\/beak\/beak_mv.php|beak_mv.php]]\r\n***\u6982\u8981\r\nBeak\u306e\u30c7\u30fc\u30bf\u306f\u901a\u5e38\u3001\u958b\u767a(\u53c8\u306f\u6975\u5c0f\u69cb\u6210)\u7528\u306b\u306f\u30ed\u30fc\u30ab\u30eb\u30d5\u30a1\u30a4\u30eb\u3067\u904b\u7528\u3057\r\n\u30b5\u30fc\u30d3\u30b9\u6642\u306b\u306fMongoDB\u3084Memcached\u306a\u3069\u306e\u5916\u90e8\u30b9\u30c8\u30ec\u30fc\u30b8\u3067\u904b\u7528\u3059\u308b\u4e8b\u306b\u306a\u308a\u307e\u3059\u3002\r\n\r\n\u30da\u30fc\u30b8\u306e\u30ec\u30a4\u30a2\u30a6\u30c8\u60c5\u5831\u306a\u3069\u306f\u30ed\u30fc\u30ab\u30eb\u306eCMS\u3067\u30ec\u30a4\u30a2\u30a6\u30c8\u3092\u4f5c\u6210\u3057\uff08\u30ed\u30fc\u30ab\u30eb\u30d5\u30a1\u30a4\u30eb\u306b\u4fdd\u5b58\uff09\r\n\u305d\u306e\u30c7\u30fc\u30bf\u3092\u5916\u90e8\u30b9\u30c8\u30ec\u30fc\u30b8\u3078\u79fb\u884c\u3059\u308b\u5834\u5408\u306e\u30c4\u30fc\u30eb\u3067\u3059\u3002\r\n\r\n***\u4f7f\u7528\u4f8b\r\n\u5c02\u7528\u306e\u8d77\u52d5\u30b9\u30af\u30ea\u30d7\u30c8\u7d4c\u7531\u3067\u5229\u7528\u3057\u307e\u3059\u3002\r\n*****DB\u5168\u4f53\u3092\u79fb\u884c(\u5b8c\u5168\u540c\u671f)\r\n&b(3){\/usr\/local\/cockatoo\/tools\/beak\/beak_mv.bash  --to file --from mongo,127.0.0.1:27017 --db test,storage};\r\n\r\n:DB\u540d:test-storage\r\n\r\n:\u30b3\u30ec\u30af\u30b7\u30e7\u30f3\u540d:test\r\n\r\n:\u65b9\u5411:\u30ed\u30fc\u30ab\u30eb\u30d5\u30a1\u30a4\u30eb \u2192 MongoDB\r\n\r\n*****\u6307\u5b9a\u30b3\u30ec\u30af\u30b7\u30e7\u30f3\u306e\u307f\u79fb\u884c(\u30c7\u30fc\u30bf\u8ffd\u52a0)\r\n&b(3){\/usr\/local\/cockatoo\/tools\/beak\/beak_mv.bash  --to file --from mongo,127.0.0.1:27017 --db test,storage,test --add};\r\n\r\nDB\u540d=\"test-storage\"\r\n\u30b3\u30ec\u30af\u30b7\u30e7\u30f3\u540d=\"test\"\r\n\u65b9\u5411= \u30ed\u30fc\u30ab\u30eb\u30d5\u30a1\u30a4\u30eb \u2192 MongoDB\r\n\r\n",
"contents":[
{
"tag":"div",
"attr":{
"class":"ih"
},
"children":[
{
"tag":"a",
"attr":{
"class":"visible toggle",
"href":"#"
},
"children":[
{
"tag":"text",
"text":""
}
]
},
{
"tag":"ol",
"attr":{
"class":"ih2"
},
"children":[
{
"tag":"li",
"attr":{
"class":"ih"
},
"children":[
{
"tag":"a",
"attr":{
"href":"#\u30c4\u30fc\u30eb"
},
"children":[
{
"tag":"text",
"text":"\u30c4\u30fc\u30eb"
}
]
}
]
},
{
"tag":"ol",
"attr":{
"class":"ih3"
},
"children":[
{
"tag":"li",
"attr":{
"class":"ih"
},
"children":[
{
"tag":"a",
"attr":{
"href":"#beak_import"
},
"children":[
{
"tag":"text",
"text":"beak_import"
}
]
}
]
},
{
"tag":"ul",
"attr":{
"class":"ih4"
},
"children":[
{
"tag":"li",
"attr":{
"class":"ih"
},
"children":[
{
"tag":"a",
"attr":{
"href":"#\u6982\u8981"
},
"children":[
{
"tag":"text",
"text":"\u6982\u8981"
}
]
}
]
},
{
"tag":"li",
"attr":{
"class":"ih"
},
"children":[
{
"tag":"a",
"attr":{
"href":"#\u4f7f\u7528\u65b9\u6cd5"
},
"children":[
{
"tag":"text",
"text":"\u4f7f\u7528\u65b9\u6cd5"
}
]
}
]
},
{
"tag":"ul",
"attr":{
"class":"ih5"
},
"children":[
{
"tag":"li",
"attr":{
"class":"ih"
},
"children":[
{
"tag":"a",
"attr":{
"href":"#\u30d5\u30a1\u30a4\u30eb\u6307\u5b9a\u53d6\u308a\u8fbc\u307f"
},
"children":[
{
"tag":"text",
"text":"\u30d5\u30a1\u30a4\u30eb\u6307\u5b9a\u53d6\u308a\u8fbc\u307f"
}
]
}
]
},
{
"tag":"li",
"attr":{
"class":"ih"
},
"children":[
{
"tag":"a",
"attr":{
"href":"#\u30d5\u30a1\u30a4\u30eb\u6307\u5b9a\u53d6\u308a\u8fbc\u307f(\u81ea\u52d5\u5224\u5b9a)"
},
"children":[
{
"tag":"text",
"text":"\u30d5\u30a1\u30a4\u30eb\u6307\u5b9a\u53d6\u308a\u8fbc\u307f(\u81ea\u52d5\u5224\u5b9a)"
}
]
}
]
},
{
"tag":"li",
"attr":{
"class":"ih"
},
"children":[
{
"tag":"a",
"attr":{
"href":"#\u518d\u5e30\u53d6\u8fbc\u307f"
},
"children":[
{
"tag":"text",
"text":"\u518d\u5e30\u53d6\u8fbc\u307f"
}
]
}
]
}
]
}
]
},
{
"tag":"li",
"attr":{
"class":"ih"
},
"children":[
{
"tag":"a",
"attr":{
"href":"#beak_mv"
},
"children":[
{
"tag":"text",
"text":"beak_mv"
}
]
}
]
},
{
"tag":"ul",
"attr":{
"class":"ih4"
},
"children":[
{
"tag":"li",
"attr":{
"class":"ih"
},
"children":[
{
"tag":"a",
"attr":{
"href":"#\u6982\u8981"
},
"children":[
{
"tag":"text",
"text":"\u6982\u8981"
}
]
}
]
},
{
"tag":"li",
"attr":{
"class":"ih"
},
"children":[
{
"tag":"a",
"attr":{
"href":"#\u4f7f\u7528\u4f8b"
},
"children":[
{
"tag":"text",
"text":"\u4f7f\u7528\u4f8b"
}
]
}
]
},
{
"tag":"ul",
"attr":{
"class":"ih5"
},
"children":[

]
}
]
}
]
}
]
}
]
},
{
"tag":"div",
"attr":{
"class":"hd1"
},
"children":[
{
"tag":"div",
"attr":{
"class":"h2"
},
"children":[
{
"tag":"h2",
"attr":[

],
"children":[
{
"tag":"text",
"text":"\u30c4\u30fc\u30eb"
},
{
"tag":"a",
"attr":{
"href":"#\u30c4\u30fc\u30eb",
"name":"\u30c4\u30fc\u30eb"
},
"children":[
{
"tag":"text",
"text":"+"
}
]
}
]
}
]
},
{
"tag":"div",
"attr":{
"class":"hd2"
},
"children":[
{
"tag":"div",
"attr":{
"class":"h3"
},
"children":[
{
"tag":"h3",
"attr":[

],
"children":[
{
"tag":"text",
"text":"beak_import"
},
{
"tag":"a",
"attr":{
"href":"#beak_import",
"name":"beak_import"
},
"children":[
{
"tag":"text",
"text":"+"
}
]
}
]
}
]
},
{
"tag":"div",
"attr":{
"class":"hd3"
},
"children":[
{
"tag":"text",
"attr":[

],
"children":[
{
"tag":"text",
"attr":[

],
"children":[
{
"tag":"text",
"text":""
}
]
},
{
"tag":"a",
"attr":{
"href":"https:\/\/github.com\/cockatoo-org\/Cockatoo\/blob\/master\/src\/tools\/beak\/beak_import.php"
},
"children":[
{
"tag":"text",
"attr":[

],
"children":[
{
"tag":"text",
"text":"beak_import.php"
}
]
}
]
},
{
"tag":"text",
"attr":[

],
"children":[
{
"tag":"text",
"text":""
}
]
},
{
"tag":"br",
"text":""
}
]
},
{
"tag":"div",
"attr":{
"class":"h4"
},
"children":[
{
"tag":"h4",
"attr":[

],
"children":[
{
"tag":"text",
"text":"\u6982\u8981"
},
{
"tag":"a",
"attr":{
"href":"#\u6982\u8981",
"name":"\u6982\u8981"
},
"children":[
{
"tag":"text",
"text":"+"
}
]
}
]
}
]
},
{
"tag":"div",
"attr":{
"class":"hd4"
},
"children":[
{
"tag":"text",
"attr":[

],
"children":[
{
"tag":"text",
"attr":[

],
"children":[
{
"tag":"text",
"text":"Cockatoo\u304c\u30b5\u30fc\u30c9\u30d1\u30fc\u30c6\u30a3JS\u30e9\u30a4\u30d6\u30e9\u30ea\u3092\u914d\u5e03\u3059\u308b\u969b\u306a\u3069"
}
]
},
{
"tag":"br",
"text":""
}
]
},
{
"tag":"text",
"attr":[

],
"children":[
{
"tag":"text",
"attr":[

],
"children":[
{
"tag":"text",
"text":"\u30ed\u30fc\u30ab\u30eb\u30d5\u30a1\u30a4\u30eb\u30b7\u30b9\u30c6\u30e0\u306e\u69cb\u9020\u3092\u305d\u306e\u307e\u307e\u306e\u5f62\u3067Beak\u306b\u53d6\u8fbc\u3080\u30c4\u30fc\u30eb\u3067\u3059\u3002"
}
]
},
{
"tag":"br",
"text":""
}
]
},
{
"tag":"text",
"attr":[

],
"children":[
{
"tag":"text",
"attr":[

],
"children":[
{
"tag":"text",
"text":""
}
]
},
{
"tag":"br",
"text":""
}
]
}
]
},
{
"tag":"div",
"attr":{
"class":"h4"
},
"children":[
{
"tag":"h4",
"attr":[

],
"children":[
{
"tag":"text",
"text":"\u4f7f\u7528\u65b9\u6cd5"
},
{
"tag":"a",
"attr":{
"href":"#\u4f7f\u7528\u65b9\u6cd5",
"name":"\u4f7f\u7528\u65b9\u6cd5"
},
"children":[
{
"tag":"text",
"text":"+"
}
]
}
]
}
]
},
{
"tag":"div",
"attr":{
"class":"hd4"
},
"children":[
{
"tag":"text",
"attr":[

],
"children":[
{
"tag":"text",
"attr":[

],
"children":[
{
"tag":"text",
"text":"\u5c02\u7528\u306e\u8d77\u52d5\u30b9\u30af\u30ea\u30d7\u30c8\u7d4c\u7531\u3067\u5229\u7528\u3057\u307e\u3059\u3002"
}
]
},
{
"tag":"br",
"text":""
}
]
},
{
"tag":"div",
"attr":{
"class":"h5"
},
"children":[
{
"tag":"h5",
"attr":[

],
"children":[
{
"tag":"text",
"text":"\u30d5\u30a1\u30a4\u30eb\u6307\u5b9a\u53d6\u308a\u8fbc\u307f"
},
{
"tag":"a",
"attr":{
"href":"#\u30d5\u30a1\u30a4\u30eb\u6307\u5b9a\u53d6\u308a\u8fbc\u307f",
"name":"\u30d5\u30a1\u30a4\u30eb\u6307\u5b9a\u53d6\u308a\u8fbc\u307f"
},
"children":[
{
"tag":"text",
"text":"+"
}
]
}
]
}
]
},
{
"tag":"div",
"attr":{
"class":"hd5"
},
"children":[
{
"tag":"text",
"attr":[

],
"children":[
{
"tag":"b",
"attr":{
"class":"b3"
},
"children":[
{
"tag":"text",
"attr":[

],
"children":[
{
"tag":"text",
"text":"\/usr\/local\/cockatoo\/tools\/beak\/beak_import.bash --src .\/js\/jquery-1.4.4.min.js  --brl static:\/\/wiki-static\/default\/js\/jquery-1.4.4.min.js --to file  --exp 31536000 --type text\/javascript --charset UTF-8"
}
]
}
]
},
{
"tag":"text",
"attr":[

],
"children":[
{
"tag":"text",
"text":false
}
]
},
{
"tag":"br",
"text":""
}
]
},
{
"tag":"text",
"attr":[

],
"children":[
{
"tag":"text",
"attr":[

],
"children":[
{
"tag":"text",
"text":""
}
]
},
{
"tag":"br",
"text":""
}
]
},
{
"tag":"dl",
"attr":[

],
"children":[
{
"tag":"dt",
"attr":[

],
"children":[
{
"tag":"text",
"attr":[

],
"children":[
{
"tag":"text",
"text":"DB\u540d"
}
]
}
]
},
{
"tag":"dd",
"attr":[

],
"children":[
{
"tag":"text",
"attr":[

],
"children":[
{
"tag":"text",
"text":"wiki-static"
}
]
}
]
}
]
},
{
"tag":"dl",
"attr":[

],
"children":[
{
"tag":"dt",
"attr":[

],
"children":[
{
"tag":"text",
"attr":[

],
"children":[
{
"tag":"text",
"text":"\u30b3\u30ec\u30af\u30b7\u30e7\u30f3\u540d"
}
]
}
]
},
{
"tag":"dd",
"attr":[

],
"children":[
{
"tag":"text",
"attr":[

],
"children":[
{
"tag":"text",
"text":"default"
}
]
}
]
}
]
},
{
"tag":"dl",
"attr":[

],
"children":[
{
"tag":"dt",
"attr":[

],
"children":[
{
"tag":"text",
"attr":[

],
"children":[
{
"tag":"text",
"text":"Key\u540d"
}
]
}
]
},
{
"tag":"dd",
"attr":[

],
"children":[
{
"tag":"text",
"attr":[

],
"children":[
{
"tag":"text",
"text":"js\/jquery-1.4.4.min.js"
}
]
},
{
"tag":"br",
"attr":[

],
"children":[

]
},
{
"tag":"text",
"attr":[

],
"children":[
{
"tag":"text",
"text":"=> http:\/\/<hostname>\/_s_\/wiki\/default\/js\/jquery-1.4.4.min.js"
}
]
}
]
}
]
},
{
"tag":"dl",
"attr":[

],
"children":[
{
"tag":"dt",
"attr":[

],
"children":[
{
"tag":"text",
"attr":[

],
"children":[
{
"tag":"text",
"text":"\u53d6\u8fbc\u308a\u8fbc\u307f\u5148"
}
]
}
]
},
{
"tag":"dd",
"attr":[

],
"children":[
{
"tag":"text",
"attr":[

],
"children":[
{
"tag":"text",
"text":"\u30ed\u30fc\u30ab\u30eb\u30d5\u30a1\u30a4\u30eb(BeakFile)"
}
]
}
]
}
]
},
{
"tag":"dl",
"attr":[

],
"children":[
{
"tag":"dt",
"attr":[

],
"children":[
{
"tag":"text",
"attr":[

],
"children":[
{
"tag":"text",
"text":"Expires\u30d8\u30c3\u30c0"
}
]
}
]
},
{
"tag":"dd",
"attr":[

],
"children":[
{
"tag":"text",
"attr":[

],
"children":[
{
"tag":"text",
"text":"+31536000\u79d2(+1\u5e74)"
}
]
}
]
}
]
},
{
"tag":"dl",
"attr":[

],
"children":[
{
"tag":"dt",
"attr":[

],
"children":[
{
"tag":"text",
"attr":[

],
"children":[
{
"tag":"text",
"text":"MimeType"
}
]
}
]
},
{
"tag":"dd",
"attr":[

],
"children":[
{
"tag":"text",
"attr":[

],
"children":[
{
"tag":"text",
"text":"\"text\/javascript\""
}
]
}
]
}
]
},
{
"tag":"dl",
"attr":[

],
"children":[
{
"tag":"dt",
"attr":[

],
"children":[
{
"tag":"text",
"attr":[

],
"children":[
{
"tag":"text",
"text":"\u6587\u5b57\u30b3\u30fc\u30c9"
}
]
}
]
},
{
"tag":"dd",
"attr":[

],
"children":[
{
"tag":"text",
"attr":[

],
"children":[
{
"tag":"text",
"text":"UTF-8"
}
]
}
]
}
]
}
]
},
{
"tag":"div",
"attr":{
"class":"h5"
},
"children":[
{
"tag":"h5",
"attr":[

],
"children":[
{
"tag":"text",
"text":"\u30d5\u30a1\u30a4\u30eb\u6307\u5b9a\u53d6\u308a\u8fbc\u307f(\u81ea\u52d5\u5224\u5b9a)"
},
{
"tag":"a",
"attr":{
"href":"#\u30d5\u30a1\u30a4\u30eb\u6307\u5b9a\u53d6\u308a\u8fbc\u307f(\u81ea\u52d5\u5224\u5b9a)",
"name":"\u30d5\u30a1\u30a4\u30eb\u6307\u5b9a\u53d6\u308a\u8fbc\u307f(\u81ea\u52d5\u5224\u5b9a)"
},
"children":[
{
"tag":"text",
"text":"+"
}
]
}
]
}
]
},
{
"tag":"div",
"attr":{
"class":"hd5"
},
"children":[
{
"tag":"text",
"attr":[

],
"children":[
{
"tag":"b",
"attr":{
"class":"b3"
},
"children":[
{
"tag":"text",
"attr":[

],
"children":[
{
"tag":"text",
"text":"\/usr\/local\/cockatoo\/tools\/beak\/beak_import.bash --src .\/js\/jquery-1.4.4.min.js  --brl static:\/\/wiki-static\/default\/js\/jquery-1.4.4.min.js --to file"
}
]
}
]
},
{
"tag":"text",
"attr":[

],
"children":[
{
"tag":"text",
"text":false
}
]
},
{
"tag":"br",
"text":""
}
]
},
{
"tag":"text",
"attr":[

],
"children":[
{
"tag":"text",
"attr":[

],
"children":[
{
"tag":"text",
"text":""
}
]
},
{
"tag":"br",
"text":""
}
]
},
{
"tag":"dl",
"attr":[

],
"children":[
{
"tag":"dt",
"attr":[

],
"children":[
{
"tag":"text",
"attr":[

],
"children":[
{
"tag":"text",
"text":"Expires\u30d8\u30c3\u30c0"
}
]
}
]
},
{
"tag":"dd",
"attr":[

],
"children":[
{
"tag":"text",
"attr":[

],
"children":[
{
"tag":"text",
"text":"\u7121\u3057"
}
]
}
]
}
]
},
{
"tag":"text",
"attr":[

],
"children":[
{
"tag":"text",
"attr":[

],
"children":[
{
"tag":"text",
"text":"\u4ed6\u306e\u9805\u76ee\u306f\u4e0a\u8a18\u3068\u540c\u3058"
}
]
},
{
"tag":"br",
"text":""
}
]
},
{
"tag":"text",
"attr":[

],
"children":[
{
"tag":"text",
"attr":[

],
"children":[
{
"tag":"text",
"text":""
}
]
},
{
"tag":"br",
"text":""
}
]
}
]
},
{
"tag":"div",
"attr":{
"class":"h5"
},
"children":[
{
"tag":"h5",
"attr":[

],
"children":[
{
"tag":"text",
"text":"\u518d\u5e30\u53d6\u8fbc\u307f"
},
{
"tag":"a",
"attr":{
"href":"#\u518d\u5e30\u53d6\u8fbc\u307f",
"name":"\u518d\u5e30\u53d6\u8fbc\u307f"
},
"children":[
{
"tag":"text",
"text":"+"
}
]
}
]
}
]
},
{
"tag":"div",
"attr":{
"class":"hd5"
},
"children":[
{
"tag":"text",
"attr":[

],
"children":[
{
"tag":"b",
"attr":{
"class":"b3"
},
"children":[
{
"tag":"text",
"attr":[

],
"children":[
{
"tag":"text",
"text":"\/usr\/local\/cockatoo\/tools\/beak\/beak_import.bash --src .\/js  --brl static:\/\/wiki-static\/default\/js --to file  --exp 86400"
}
]
}
]
},
{
"tag":"text",
"attr":[

],
"children":[
{
"tag":"text",
"text":false
}
]
},
{
"tag":"br",
"text":""
}
]
},
{
"tag":"text",
"attr":[

],
"children":[
{
"tag":"text",
"attr":[

],
"children":[
{
"tag":"text",
"text":""
}
]
},
{
"tag":"br",
"text":""
}
]
},
{
"tag":"dl",
"attr":[

],
"children":[
{
"tag":"dt",
"attr":[

],
"children":[
{
"tag":"text",
"attr":[

],
"children":[
{
"tag":"text",
"text":"DB\u540d"
}
]
}
]
},
{
"tag":"dd",
"attr":[

],
"children":[
{
"tag":"text",
"attr":[

],
"children":[
{
"tag":"text",
"text":"wiki-static"
}
]
}
]
}
]
},
{
"tag":"dl",
"attr":[

],
"children":[
{
"tag":"dt",
"attr":[

],
"children":[
{
"tag":"text",
"attr":[

],
"children":[
{
"tag":"text",
"text":"\u30b3\u30ec\u30af\u30b7\u30e7\u30f3\u540d"
}
]
}
]
},
{
"tag":"dd",
"attr":[

],
"children":[
{
"tag":"text",
"attr":[

],
"children":[
{
"tag":"text",
"text":"default"
}
]
}
]
}
]
},
{
"tag":"dl",
"attr":[

],
"children":[
{
"tag":"dt",
"attr":[

],
"children":[
{
"tag":"text",
"attr":[

],
"children":[
{
"tag":"text",
"text":"Key\u540d"
}
]
}
]
},
{
"tag":"dd",
"attr":[

],
"children":[
{
"tag":"text",
"attr":[

],
"children":[
{
"tag":"text",
"text":"js\/(\u203b\u4ee5\u4e0b\u5168\u3066)"
}
]
},
{
"tag":"br",
"attr":[

],
"children":[

]
},
{
"tag":"text",
"attr":[

],
"children":[
{
"tag":"text",
"text":"=> http:\/\/<hostname>\/_s_\/wiki\/default\/js\/(\u203b\u4ee5\u4e0b\u5168\u3066)"
}
]
}
]
}
]
},
{
"tag":"dl",
"attr":[

],
"children":[
{
"tag":"dt",
"attr":[

],
"children":[
{
"tag":"text",
"attr":[

],
"children":[
{
"tag":"text",
"text":"Expires\u30d8\u30c3\u30c0"
}
]
}
]
},
{
"tag":"dd",
"attr":[

],
"children":[
{
"tag":"text",
"attr":[

],
"children":[
{
"tag":"text",
"text":"+86400\u79d2(+1\u65e5)"
}
]
}
]
}
]
},
{
"tag":"dl",
"attr":[

],
"children":[
{
"tag":"dt",
"attr":[

],
"children":[
{
"tag":"text",
"attr":[

],
"children":[
{
"tag":"text",
"text":"MimeType"
}
]
}
]
},
{
"tag":"dd",
"attr":[

],
"children":[
{
"tag":"text",
"attr":[

],
"children":[
{
"tag":"text",
"text":"\u81ea\u52d5\u5224\u5b9a"
}
]
}
]
}
]
},
{
"tag":"dl",
"attr":[

],
"children":[
{
"tag":"dt",
"attr":[

],
"children":[
{
"tag":"text",
"attr":[

],
"children":[
{
"tag":"text",
"text":"\u6587\u5b57\u30b3\u30fc\u30c9"
}
]
}
]
},
{
"tag":"dd",
"attr":[

],
"children":[
{
"tag":"text",
"attr":[

],
"children":[
{
"tag":"text",
"text":"\u81ea\u52d5\u5224\u5b9a"
}
]
}
]
}
]
},
{
"tag":"text",
"attr":[

],
"children":[
{
"tag":"text",
"attr":[

],
"children":[
{
"tag":"text",
"text":""
}
]
},
{
"tag":"br",
"text":""
}
]
}
]
}
]
}
]
},
{
"tag":"div",
"attr":{
"class":"h3"
},
"children":[
{
"tag":"h3",
"attr":[

],
"children":[
{
"tag":"text",
"text":"beak_mv"
},
{
"tag":"a",
"attr":{
"href":"#beak_mv",
"name":"beak_mv"
},
"children":[
{
"tag":"text",
"text":"+"
}
]
}
]
}
]
},
{
"tag":"div",
"attr":{
"class":"hd3"
},
"children":[
{
"tag":"text",
"attr":[

],
"children":[
{
"tag":"text",
"attr":[

],
"children":[
{
"tag":"text",
"text":""
}
]
},
{
"tag":"a",
"attr":{
"href":"https:\/\/github.com\/cockatoo-org\/Cockatoo\/blob\/master\/src\/tools\/beak\/beak_mv.php"
},
"children":[
{
"tag":"text",
"attr":[

],
"children":[
{
"tag":"text",
"text":"beak_mv.php"
}
]
}
]
},
{
"tag":"text",
"attr":[

],
"children":[
{
"tag":"text",
"text":""
}
]
},
{
"tag":"br",
"text":""
}
]
},
{
"tag":"div",
"attr":{
"class":"h4"
},
"children":[
{
"tag":"h4",
"attr":[

],
"children":[
{
"tag":"text",
"text":"\u6982\u8981"
},
{
"tag":"a",
"attr":{
"href":"#\u6982\u8981",
"name":"\u6982\u8981"
},
"children":[
{
"tag":"text",
"text":"+"
}
]
}
]
}
]
},
{
"tag":"div",
"attr":{
"class":"hd4"
},
"children":[
{
"tag":"text",
"attr":[

],
"children":[
{
"tag":"text",
"attr":[

],
"children":[
{
"tag":"text",
"text":"Beak\u306e\u30c7\u30fc\u30bf\u306f\u901a\u5e38\u3001\u958b\u767a(\u53c8\u306f\u6975\u5c0f\u69cb\u6210)\u7528\u306b\u306f\u30ed\u30fc\u30ab\u30eb\u30d5\u30a1\u30a4\u30eb\u3067\u904b\u7528\u3057"
}
]
},
{
"tag":"br",
"text":""
}
]
},
{
"tag":"text",
"attr":[

],
"children":[
{
"tag":"text",
"attr":[

],
"children":[
{
"tag":"text",
"text":"\u30b5\u30fc\u30d3\u30b9\u6642\u306b\u306fMongoDB\u3084Memcached\u306a\u3069\u306e\u5916\u90e8\u30b9\u30c8\u30ec\u30fc\u30b8\u3067\u904b\u7528\u3059\u308b\u4e8b\u306b\u306a\u308a\u307e\u3059\u3002"
}
]
},
{
"tag":"br",
"text":""
}
]
},
{
"tag":"text",
"attr":[

],
"children":[
{
"tag":"text",
"attr":[

],
"children":[
{
"tag":"text",
"text":""
}
]
},
{
"tag":"br",
"text":""
}
]
},
{
"tag":"text",
"attr":[

],
"children":[
{
"tag":"text",
"attr":[

],
"children":[
{
"tag":"text",
"text":"\u30da\u30fc\u30b8\u306e\u30ec\u30a4\u30a2\u30a6\u30c8\u60c5\u5831\u306a\u3069\u306f\u30ed\u30fc\u30ab\u30eb\u306eCMS\u3067\u30ec\u30a4\u30a2\u30a6\u30c8\u3092\u4f5c\u6210\u3057\uff08\u30ed\u30fc\u30ab\u30eb\u30d5\u30a1\u30a4\u30eb\u306b\u4fdd\u5b58\uff09"
}
]
},
{
"tag":"br",
"text":""
}
]
},
{
"tag":"text",
"attr":[

],
"children":[
{
"tag":"text",
"attr":[

],
"children":[
{
"tag":"text",
"text":"\u305d\u306e\u30c7\u30fc\u30bf\u3092\u5916\u90e8\u30b9\u30c8\u30ec\u30fc\u30b8\u3078\u79fb\u884c\u3059\u308b\u5834\u5408\u306e\u30c4\u30fc\u30eb\u3067\u3059\u3002"
}
]
},
{
"tag":"br",
"text":""
}
]
},
{
"tag":"text",
"attr":[

],
"children":[
{
"tag":"text",
"attr":[

],
"children":[
{
"tag":"text",
"text":""
}
]
},
{
"tag":"br",
"text":""
}
]
}
]
},
{
"tag":"div",
"attr":{
"class":"h4"
},
"children":[
{
"tag":"h4",
"attr":[

],
"children":[
{
"tag":"text",
"text":"\u4f7f\u7528\u4f8b"
},
{
"tag":"a",
"attr":{
"href":"#\u4f7f\u7528\u4f8b",
"name":"\u4f7f\u7528\u4f8b"
},
"children":[
{
"tag":"text",
"text":"+"
}
]
}
]
}
]
},
{
"tag":"div",
"attr":{
"class":"hd4"
},
"children":[
{
"tag":"text",
"attr":[

],
"children":[
{
"tag":"text",
"attr":[

],
"children":[
{
"tag":"text",
"text":"\u5c02\u7528\u306e\u8d77\u52d5\u30b9\u30af\u30ea\u30d7\u30c8\u7d4c\u7531\u3067\u5229\u7528\u3057\u307e\u3059\u3002"
}
]
},
{
"tag":"br",
"text":""
}
]
},
{
"tag":"div",
"attr":{
"class":"hd5"
},
"children":[
{
"tag":"div",
"attr":{
"class":"h6"
},
"children":[
{
"tag":"h6",
"attr":[

],
"children":[
{
"tag":"text",
"text":"DB\u5168\u4f53\u3092\u79fb\u884c(\u5b8c\u5168\u540c\u671f)"
},
{
"tag":"a",
"attr":{
"href":"#DB\u5168\u4f53\u3092\u79fb\u884c(\u5b8c\u5168\u540c\u671f)",
"name":"DB\u5168\u4f53\u3092\u79fb\u884c(\u5b8c\u5168\u540c\u671f)"
},
"children":[
{
"tag":"text",
"text":"+"
}
]
}
]
}
]
},
{
"tag":"div",
"attr":{
"class":"hd6"
},
"children":[
{
"tag":"text",
"attr":[

],
"children":[
{
"tag":"b",
"attr":{
"class":"b3"
},
"children":[
{
"tag":"text",
"attr":[

],
"children":[
{
"tag":"text",
"text":"\/usr\/local\/cockatoo\/tools\/beak\/beak_mv.bash  --to file --from mongo,127.0.0.1:27017 --db test,storage"
}
]
}
]
},
{
"tag":"text",
"attr":[

],
"children":[
{
"tag":"text",
"text":false
}
]
},
{
"tag":"br",
"text":""
}
]
},
{
"tag":"text",
"attr":[

],
"children":[
{
"tag":"text",
"attr":[

],
"children":[
{
"tag":"text",
"text":""
}
]
},
{
"tag":"br",
"text":""
}
]
},
{
"tag":"dl",
"attr":[

],
"children":[
{
"tag":"dt",
"attr":[

],
"children":[
{
"tag":"text",
"attr":[

],
"children":[
{
"tag":"text",
"text":"DB\u540d"
}
]
}
]
},
{
"tag":"dd",
"attr":[

],
"children":[
{
"tag":"text",
"attr":[

],
"children":[
{
"tag":"text",
"text":"test-storage"
}
]
}
]
}
]
},
{
"tag":"dl",
"attr":[

],
"children":[
{
"tag":"dt",
"attr":[

],
"children":[
{
"tag":"text",
"attr":[

],
"children":[
{
"tag":"text",
"text":"\u30b3\u30ec\u30af\u30b7\u30e7\u30f3\u540d"
}
]
}
]
},
{
"tag":"dd",
"attr":[

],
"children":[
{
"tag":"text",
"attr":[

],
"children":[
{
"tag":"text",
"text":"test"
}
]
}
]
}
]
},
{
"tag":"dl",
"attr":[

],
"children":[
{
"tag":"dt",
"attr":[

],
"children":[
{
"tag":"text",
"attr":[

],
"children":[
{
"tag":"text",
"text":"\u65b9\u5411"
}
]
}
]
},
{
"tag":"dd",
"attr":[

],
"children":[
{
"tag":"text",
"attr":[

],
"children":[
{
"tag":"text",
"text":"\u30ed\u30fc\u30ab\u30eb\u30d5\u30a1\u30a4\u30eb \u2192 MongoDB"
}
]
}
]
}
]
}
]
},
{
"tag":"div",
"attr":{
"class":"h6"
},
"children":[
{
"tag":"h6",
"attr":[

],
"children":[
{
"tag":"text",
"text":"\u6307\u5b9a\u30b3\u30ec\u30af\u30b7\u30e7\u30f3\u306e\u307f\u79fb\u884c(\u30c7\u30fc\u30bf\u8ffd\u52a0)"
},
{
"tag":"a",
"attr":{
"href":"#\u6307\u5b9a\u30b3\u30ec\u30af\u30b7\u30e7\u30f3\u306e\u307f\u79fb\u884c(\u30c7\u30fc\u30bf\u8ffd\u52a0)",
"name":"\u6307\u5b9a\u30b3\u30ec\u30af\u30b7\u30e7\u30f3\u306e\u307f\u79fb\u884c(\u30c7\u30fc\u30bf\u8ffd\u52a0)"
},
"children":[
{
"tag":"text",
"text":"+"
}
]
}
]
}
]
},
{
"tag":"div",
"attr":{
"class":"hd6"
},
"children":[
{
"tag":"text",
"attr":[

],
"children":[
{
"tag":"b",
"attr":{
"class":"b3"
},
"children":[
{
"tag":"text",
"attr":[

],
"children":[
{
"tag":"text",
"text":"\/usr\/local\/cockatoo\/tools\/beak\/beak_mv.bash  --to file --from mongo,127.0.0.1:27017 --db test,storage,test --add"
}
]
}
]
},
{
"tag":"text",
"attr":[

],
"children":[
{
"tag":"text",
"text":false
}
]
},
{
"tag":"br",
"text":""
}
]
},
{
"tag":"text",
"attr":[

],
"children":[
{
"tag":"text",
"attr":[

],
"children":[
{
"tag":"text",
"text":""
}
]
},
{
"tag":"br",
"text":""
}
]
},
{
"tag":"text",
"attr":[

],
"children":[
{
"tag":"text",
"attr":[

],
"children":[
{
"tag":"text",
"text":"DB\u540d=\"test-storage\""
}
]
},
{
"tag":"br",
"text":""
}
]
},
{
"tag":"text",
"attr":[

],
"children":[
{
"tag":"text",
"attr":[

],
"children":[
{
"tag":"text",
"text":"\u30b3\u30ec\u30af\u30b7\u30e7\u30f3\u540d=\"test\""
}
]
},
{
"tag":"br",
"text":""
}
]
},
{
"tag":"text",
"attr":[

],
"children":[
{
"tag":"text",
"attr":[

],
"children":[
{
"tag":"text",
"text":"\u65b9\u5411= \u30ed\u30fc\u30ab\u30eb\u30d5\u30a1\u30a4\u30eb \u2192 MongoDB"
}
]
},
{
"tag":"br",
"text":""
}
]
},
{
"tag":"text",
"attr":[

],
"children":[
{
"tag":"text",
"attr":[

],
"children":[
{
"tag":"text",
"text":""
}
]
},
{
"tag":"br",
"text":""
}
]
},
{
"tag":"text",
"attr":[

],
"children":[
{
"tag":"text",
"attr":[

],
"children":[
{
"tag":"text",
"text":""
}
]
},
{
"tag":"br",
"text":""
}
]
}
]
}
]
}
]
}
]
}
]
}
]
}
],
"author":"crumbjp",
"_u":"Beak%E3%83%87%E3%83%BC%E3%82%BF%E7%A7%BB%E8%A1%8C%E3%83%84%E3%83%BC%E3%83%AB"
}