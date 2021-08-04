tests - inline code
testInlineCodeStrippingWhitspaces4

	| expectedOutput output code |
	output := parser parseInline: '`  `' with: 1.
	code := MarkdownCodeSpan new
		code: '  ';
		fenceLength: 1;
		rawContent: '  ';
		startPosition: 1.
	expectedOutput := MarkdownLinkedList newFrom: {code}.
	
	self assert: expectedOutput equals: output