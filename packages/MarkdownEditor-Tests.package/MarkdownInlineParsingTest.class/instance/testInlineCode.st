tests - inline code
testInlineCode

	| expectedOutput output code |
	output := parser parseInline: '`test`'.
	code := MarkdownCodeSpan new
		content: 'test';
		rawContent: 'test';
		fenceLength: 1;
		startPosition: 1.
	expectedOutput := MarkdownLinkedList newFrom: {code}.
	
	self assert: expectedOutput equals: output