new html parser
testConvertStrikeText

	| output |
	parser parse: '~~hello~~'.
	output :=  (htmlConverter convertToHtml: parser document).
	self assert:   
'<!DOCTYPE html>
<html>
<head>
</head>
<body>
<p><del>hello</del></p>
</body>
</html>'
		equals: output.