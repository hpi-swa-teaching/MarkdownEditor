tests - inline code
testInlineCode2

	| expectedOutput output code |
	output := parser parseInline: '`te*s*t`'.
	code := MarkdownCodeSpan new
		content: 'te*s*t';
		totalLength: 8.
	expectedOutput := MarkdownLinkedList newFrom: {code}.
	
	self assert: expectedOutput equals: output