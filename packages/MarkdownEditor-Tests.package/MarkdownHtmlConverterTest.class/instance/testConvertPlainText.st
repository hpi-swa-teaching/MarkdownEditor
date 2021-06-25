new html parser
testConvertPlainText

	| output |
	parser parse: 'hello'.
	output :=  (htmlConverter convertToHtml: parser document).
	self assert:   
'<!DOCTYPE html>
<html>
<head>
</head>
<body>
<p>hello</p>
</body>
</html>'
		equals: output.