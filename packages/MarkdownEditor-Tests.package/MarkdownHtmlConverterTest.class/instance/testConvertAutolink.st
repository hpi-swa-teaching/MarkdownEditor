new html parser
testConvertAutolink

	| output |
	parser parse: '<https://hpi.de>'.
	output :=  (htmlConverter convertToHtml: parser document).
	self assert:   
'<!DOCTYPE html>
<html>
<head>
</head>
<body>
<p><a href="https://hpi.de">https://hpi.de</a></p>
</body>
</html>'
		equals: output.