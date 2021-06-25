new html parser
testConvertATXHeadingLevel5

	| output |
	parser parse: '##### Heading 5'.
	output :=  (htmlConverter convertToHtml: parser document).
	self assert:   
'<!DOCTYPE html>
<html>
<head>
</head>
<body>
<h5>Heading 5</h5>
</body>
</html>'
		equals: output.