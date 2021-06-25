new html parser
testConvertATXHeadingLevel6

	| output |
	parser parse: '###### Heading 6'.
	output :=  (htmlConverter convertToHtml: parser document).
	self assert:   
'<!DOCTYPE html>
<html>
<head>
</head>
<body>
<h6>Heading 6</h6>
</body>
</html>'
		equals: output.