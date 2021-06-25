new html parser
testConvertATXHeadingLevel3

	| output |
	parser parse: '### Heading 3'.
	output :=  (htmlConverter convertToHtml: parser document).
	self assert:   
'<!DOCTYPE html>
<html>
<head>
</head>
<body>
<h3>Heading 3</h3>
</body>
</html>'
		equals: output.