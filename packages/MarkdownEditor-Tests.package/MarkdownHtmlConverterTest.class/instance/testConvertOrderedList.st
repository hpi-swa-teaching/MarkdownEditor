as yet unclassified
testConvertOrderedList
	"not implemented yet"

	| block html expectedHtml |
	
	block :=self createBlockFrom: '1. Level 1'.
	block append: (MarkdownLine newFrom: '2. Level1').
	block append: (MarkdownLine newFrom: '	1. Level 2').
	block append: (MarkdownLine newFrom: '	2. Level 2').
	block append: (MarkdownLine newFrom: '		2. Level 3').
	block append: (MarkdownLine newFrom: '	3.. Level 2').
		block append: (MarkdownLine newFrom: '	5. Level 2').
		block append: (MarkdownLine newFrom: '3. Level 1').
	
	html := htmlConverter convert: {block}.
	expectedHtml :='<!DOCTYPE html>
<html>
<head></head>
<body>
Ordered List</body>
</html>'.

	self assert: (expectedHtml = html).