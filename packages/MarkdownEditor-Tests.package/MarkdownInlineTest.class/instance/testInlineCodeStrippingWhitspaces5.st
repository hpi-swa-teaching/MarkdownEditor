tests - inline code
testInlineCodeStrippingWhitspaces5

	| expectedOutput output |
	output := parser parseInline: '`test    test`'.
	expectedOutput := MarkdownLinkedList newFrom: {MarkdownCodeSpan newFrom: 'test    test'}.
	
	self assert: expectedOutput equals: output