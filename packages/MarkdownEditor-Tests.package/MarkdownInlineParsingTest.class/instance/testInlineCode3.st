tests - inline code
testInlineCode3

	| expectedOutput output code str |
	output := parser parseInline: '`test``test``'.
	str := MarkdownString newFrom: '`test'.
	code := MarkdownCodeSpan new
		content: 'test';
		fenceLength: 2;
		rawContent: 'test'.
	expectedOutput := MarkdownLinkedList newFrom: { str. code }.
	
	self assert: expectedOutput equals: output