new html parser
testConvertBlockquote

	| output |
	parser parse: '> hello', Character cr, '> this is a', Character cr,'> blockquote test'.
	output :=  (htmlConverter convertToHtml: parser document).
	self assert:   
'<!DOCTYPE html>
<html>
<head>
</head>
<body>
<blockquote>
<p>hello
this is a
blockquote test</p>
</blockquote>
</body>
</html>'
		equals: output.