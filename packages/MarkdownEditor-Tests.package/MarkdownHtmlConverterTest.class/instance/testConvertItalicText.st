new html parser
testConvertItalicText

	| output |
	parser parse: '*hello*'.
	output :=  (htmlConverter convertToHtml: parser document).
	self assert:   
'<!DOCTYPE html>
<html>
<head>
</head>
<body>
<p><em>hello</em></p>
</body>
</html>'
		equals: output.