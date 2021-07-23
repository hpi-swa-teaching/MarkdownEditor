tests - inline code
testInlineCode3

	| expectedOutput output code str |
	output := parser parseInline: '`test``test``'.
	str := MarkdownString newFrom: '`test' startingAt: 1.
	code := MarkdownCodeSpan new
		content: 'test';
		fenceLength: 2;
		rawContent: 'test';
		startPosition: 6.
	expectedOutput := MarkdownLinkedList newFrom: { str. code }.
	
	self assert: expectedOutput equals: output