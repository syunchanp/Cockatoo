{"@R":"1331101607","type":"HorizontalWidget","subject":"uploaded","description":"uploaded","css":"#uploaded img.thumb {\n  height: 150px;\n}\n#uploaded table {\n  border: 2px solid #2020E0;\n}\n#uploaded table th{\n  border-bottom: 2px solid #2020E0;\n  border-right: 1px solid #2020E0;\n}\n\n#uploaded table td{\n  border-bottom: 1px solid #2020E0;\n  border-right: 1px solid #2020E0;\n}","js":"","id":"uploaded","class":"","body":"<div><a href=\"\/view\/<?cs var: A.wiki.page ?>\">Return to page<\/a><\/div>\n<ul>\n<table>\n<tr><th>thumb<\/th><th>file<\/th><\/tr>\n<?cs each: item = A.wiki.names ?>\n<tr><td><a href=\"\/wiki\/img\/<?cs var: A.wiki.page ?>?n=<?cs var: item ?>\"><img class=\"thumb\" src=\"\/wiki\/img\/<?cs var: A.wiki.page ?>?n=<?cs var: item ?>\"><\/img><\/a><\/td><td>&ref(<?cs var: item ?>);<\/td><\/tr>\n<?cs \/each ?>\n<\/table>\n<\/ul>","action":["action:\/\/wiki-action\/wiki\/ImgAction?keys"],"_u":"img\/list"}