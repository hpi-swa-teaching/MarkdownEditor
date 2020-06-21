as yet unclassified
testConvertCodeBlock

	| block html expectedHtml |
	
	block :=self createBlockFrom: '```'.
	block append: (MarkdownLine newFrom: 'Some Code').
	block append: (MarkdownLine newFrom: '```').
	
	html := htmlConverter convert: {block}.
	expectedHtml := '<!DOCTYPE html>
<html>
<head></head>
<body>
<code>Some Code</code>
</body>
</html>'.

	self assert: (expectedHtml = html).