new html parser
testConvertATXHeadingLevel4

	| output |
	parser parse: '#### Heading 4'.
	output :=  (htmlConverter convertToHtml: parser document).
	self assert:   
'<!DOCTYPE html>
<html>
<head>
</head>
<body>
<h4>Heading 4</h4>
</body>
</html>'
		equals: output.