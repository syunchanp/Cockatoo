{"etag":"\"bd006fcd-df64-6d19-684a914bff85fec7\"","type":"text\/plain","exp":"86400","desc":null,"data":"About\n-----\n\nFlot is a Javascript plotting library for jQuery. Read more at the\nwebsite:\n\n  http:\/\/code.google.com\/p\/flot\/\n\nTake a look at the examples linked from above, they should give a good\nimpression of what Flot can do and the source code of the examples is\nprobably the fastest way to learn how to use Flot.\n  \n\nInstallation\n------------\n\nJust include the Javascript file after you've included jQuery.\n\nGenerally, all browsers that support the HTML5 canvas tag are\nsupported.\n\nFor support for Internet Explorer < 9, you can use Excanvas, a canvas\nemulator; this is used in the examples bundled with Flot. You just\ninclude the excanvas script like this:\n\n  <!--[if lte IE 8]><script language=\"javascript\" type=\"text\/javascript\" src=\"excanvas.min.js\"><\/script><![endif]-->\n\nIf it's not working on your development IE 6.0, check that it has\nsupport for VML which Excanvas is relying on. It appears that some\nstripped down versions used for test environments on virtual machines\nlack the VML support.\n\nYou can also try using Flashcanvas (see\nhttp:\/\/code.google.com\/p\/flashcanvas\/), which uses Flash to do the\nemulation. Although Flash can be a bit slower to load than VML, if\nyou've got a lot of points, the Flash version can be much faster\noverall. Flot contains some wrapper code for activating Excanvas which\nFlashcanvas is compatible with.\n\nYou need at least jQuery 1.2.6, but try at least 1.3.2 for interactive\ncharts because of performance improvements in event handling.\n\n\nBasic usage\n-----------\n\nCreate a placeholder div to put the graph in:\n\n   <div id=\"placeholder\"><\/div>\n\nYou need to set the width and height of this div, otherwise the plot\nlibrary doesn't know how to scale the graph. You can do it inline like\nthis:\n\n   <div id=\"placeholder\" style=\"width:600px;height:300px\"><\/div>\n\nYou can also do it with an external stylesheet. Make sure that the\nplaceholder isn't within something with a display:none CSS property -\nin that case, Flot has trouble measuring label dimensions which\nresults in garbled looks and might have trouble measuring the\nplaceholder dimensions which is fatal (it'll throw an exception).\n\nThen when the div is ready in the DOM, which is usually on document\nready, run the plot function:\n\n  $.plot($(\"#placeholder\"), data, options);\n\nHere, data is an array of data series and options is an object with\nsettings if you want to customize the plot. Take a look at the\nexamples for some ideas of what to put in or look at the reference\nin the file \"API.txt\". Here's a quick example that'll draw a line from\n(0, 0) to (1, 1):\n\n  $.plot($(\"#placeholder\"), [ [[0, 0], [1, 1]] ], { yaxis: { max: 1 } });\n\nThe plot function immediately draws the chart and then returns a plot\nobject with a couple of methods.\n\n\nWhat's with the name?\n---------------------\n\nFirst: it's pronounced with a short o, like \"plot\". Not like \"flawed\".\n\nSo \"Flot\" rhymes with \"plot\".\n\nAnd if you look up \"flot\" in a Danish-to-English dictionary, some up\nthe words that come up are \"good-looking\", \"attractive\", \"stylish\",\n\"smart\", \"impressive\", \"extravagant\". One of the main goals with Flot\nis pretty looks.\n","_u":"js\/flot\/README.txt"}