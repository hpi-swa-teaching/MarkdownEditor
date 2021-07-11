tests - inline code
testInlineCode

	| expectedOutput output |
	output := parser parseInline: '`test`'.
	expectedOutput := MarkdownLinkedList newFrom: {MarkdownCodeSpan newFrom: 'test'}.
	
	self assert: expectedOutput equals: output