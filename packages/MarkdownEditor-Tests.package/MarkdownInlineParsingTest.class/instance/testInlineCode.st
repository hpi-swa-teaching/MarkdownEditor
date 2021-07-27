tests - inline code
testInlineCode

	| expectedOutput output code |
	output := parser parseInline: '`test`' with: 1.
	code := MarkdownCodeSpan new
		content: 'test';
		rawContent: 'test';
		fenceLength: 1;
		startPosition: 1.
	expectedOutput := MarkdownLinkedList newFrom: {code}.
	
	self assert: expectedOutput equals: output