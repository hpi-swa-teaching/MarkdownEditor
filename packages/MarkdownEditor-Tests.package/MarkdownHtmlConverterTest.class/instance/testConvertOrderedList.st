as yet unclassified
testConvertOrderedList
	"not implemented yet"

	| block html |
	
	block :=self createBlockFrom: '1. Level 1'.
	block append: (MarkdownLine newFrom: '2. Level1').
	block append: (MarkdownLine newFrom: '	1. Level 2').
	block append: (MarkdownLine newFrom: '	2. Level 2').
	block append: (MarkdownLine newFrom: '		2. Level 3').
	block append: (MarkdownLine newFrom: '	3.. Level 2').
		block append: (MarkdownLine newFrom: '	5. Level 2').
		block append: (MarkdownLine newFrom: '3. Level 1').
	
	html := htmlConverter convertOrderedList: block.

	self assert: ('Ordered List' = html).