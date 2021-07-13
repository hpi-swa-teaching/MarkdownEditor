tests - inline code
testInlineCode

	| expectedOutput output code |
	output := parser parseInline: '`test`'.
	code := MarkdownCodeSpan new
		content: 'test';
		totalLength: 6.
	expectedOutput := MarkdownLinkedList newFrom: {code}.
	
	self assert: expectedOutput equals: output