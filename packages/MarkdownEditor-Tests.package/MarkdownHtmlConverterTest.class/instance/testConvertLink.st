new html parser
testConvertLink

	| output |
	parser parse: '[test](https://hpi.de)'.
	output :=  (htmlConverter convertToHtml: parser document).
	self assert:   
'<!DOCTYPE html>
<html>
<head>
</head>
<body>
<p><a href="https://hpi.de">test</a></p>
</body>
</html>'
		equals: output.