new html parser
testConvertATXHeadingLevel1

	| output |
	parser parse: '# Heading 1'.
	output :=  (htmlConverter convertToHtml: parser document).
	self assert:   
'<!DOCTYPE html>
<html>
<head>
</head>
<body>
<h1>Heading 1</h1>
</body>
</html>'
		equals: output.