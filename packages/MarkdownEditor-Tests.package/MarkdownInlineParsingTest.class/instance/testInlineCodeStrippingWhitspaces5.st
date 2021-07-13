tests - inline code
testInlineCodeStrippingWhitspaces5

	| expectedOutput output code |
	output := parser parseInline: '`test    test`'.
	code := MarkdownCodeSpan new
		content: 'test    test';
		fenceLength: 1;
		rawContent: 'test    test'.
	expectedOutput := MarkdownLinkedList newFrom: {code}.
	
	self assert: expectedOutput equals: output