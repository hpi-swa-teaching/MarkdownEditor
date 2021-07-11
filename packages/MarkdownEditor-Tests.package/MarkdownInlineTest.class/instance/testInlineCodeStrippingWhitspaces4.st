tests - inline code
testInlineCodeStrippingWhitspaces4

	| expectedOutput output code |
	output := parser parseInline: '`  `'.
	code := MarkdownCodeSpan new
		content: '  ';
		totalLength: 4.
	expectedOutput := MarkdownLinkedList newFrom: {code}.
	
	self assert: expectedOutput equals: output