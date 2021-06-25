new html parser
testConvertBoldText

	| output |
	parser parse: '**hello**'.
	output :=  (htmlConverter convertToHtml: parser document).
	self assert:   
'<!DOCTYPE html>
<html>
<head>
</head>
<body>
<p><strong>hello</strong></p>
</body>
</html>'
		equals: output.