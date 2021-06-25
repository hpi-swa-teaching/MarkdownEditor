new html parser
testConvertImage2

	| output |
	parser parse: '![*test*](test.png)'.
	output :=  (htmlConverter convertToHtml: parser document).
	self assert:   
'<!DOCTYPE html>
<html>
<head>
</head>
<body>
<p><img src="test.png" alt="test" /></p>
</body>
</html>'
		equals: output.