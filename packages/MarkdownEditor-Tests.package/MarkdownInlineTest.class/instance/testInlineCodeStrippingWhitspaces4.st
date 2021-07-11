tests - inline code
testInlineCodeStrippingWhitspaces4

	| expectedOutput output |
	output := parser parseInline: '`  `'.
	expectedOutput := MarkdownLinkedList newFrom: {MarkdownCodeSpan newFrom: '  '}.
	
	self assert: expectedOutput equals: output