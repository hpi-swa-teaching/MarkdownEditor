new html parser
testConvertAutolinkWithMail

	| output |
	parser parse: '<squeak@hpi.de>'.
	output :=  (htmlConverter convertToHtml: parser document).
	self assert:   
'<!DOCTYPE html>
<html>
<head>
</head>
<body>
<p><a href="mailto:squeak@hpi.de">squeak@hpi.de</a></p>
</body>
</html>'
		equals: output.