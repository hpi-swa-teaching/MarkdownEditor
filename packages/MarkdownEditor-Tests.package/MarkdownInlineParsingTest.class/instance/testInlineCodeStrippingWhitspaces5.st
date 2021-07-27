tests - inline code
testInlineCodeStrippingWhitspaces5

	| expectedOutput output code |
	output := parser parseInline: '`test    test`' with: 1.
	code := MarkdownCodeSpan new
		content: 'test    test';
		fenceLength: 1;
		rawContent: 'test    test';
		startPosition: 1.
	expectedOutput := MarkdownLinkedList newFrom: {code}.
	
	self assert: expectedOutput equals: output