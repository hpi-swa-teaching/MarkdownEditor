new html parser
testConvertATXHeadingLevel2

	| output |
	parser parse: '## Heading 2'.
	output :=  (htmlConverter convertToHtml: parser document).
	self assert:   
'<!DOCTYPE html>
<html>
<head>
</head>
<body>
<h2>Heading 2</h2>
</body>
</html>'
		equals: output.