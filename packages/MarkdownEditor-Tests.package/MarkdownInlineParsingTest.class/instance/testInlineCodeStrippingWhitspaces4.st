tests - inline code
testInlineCodeStrippingWhitspaces4

	| expectedOutput output code |
	output := parser parseInline: '`  `'.
	code := MarkdownCodeSpan new
		content: '  ';
		fenceLength: 1;
		rawContent: '  '.
	expectedOutput := MarkdownLinkedList newFrom: {code}.
	
	self assert: expectedOutput equals: output