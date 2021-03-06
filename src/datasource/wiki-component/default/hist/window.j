{
"@R":"1343290114",
"type":"HorizontalWidget",
"subject":"history",
"description":"history",
"css":"#history {\n  border: 1px solid #8080F0;\n  color: #888888;\n  text-align:center;\n}\n\n#history div.window {\n  border : 1px solid #C0C8C2;\n  width: 200px;\n  margin: 0 auto;\n  text-align:left;\n}\n\n#history h5 {\n  margin: 0 0 0 0;\n  padding: 0 2px 0 2px;\n  font-size: 1.2em;\n}\n\n#history ul{\n  padding: 0 5px;\n}\n#history li > div {\n  color: #2020E0;\n}\n#history li > div.op {\n  font-size: 0.7em;\n}\n#history li a {\n  text-decoration: none;\n}",
"js":"",
"id":"history",
"class":"",
"body":"<h5>history<\/h5>\n<div class=\"window\">\n<ul>\n<?cs each:item=A.wiki.hist ?>\n<li>\n  <?cs var:item.time ?>\n  <div><a href=\"\/wiki\/view\/<?cs var:item.title ?>\"><?cs var:item.title ?><\/a><\/div>\n  <div class=\"op\"><?cs var:item.op ?> by <?cs var:item.author ?><\/div>\n<\/li>\n<?cs \/each ?>\n<\/ul>\n<\/div>",
"action":[
"action:\/\/wiki-action\/wiki\/HistAction?get#cache#cexp=30"
],
"_u":"hist\/window"
}