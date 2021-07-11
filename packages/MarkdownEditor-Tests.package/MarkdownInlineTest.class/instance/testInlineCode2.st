tests - inline code
testInlineCode2

	| expectedOutput output |
	output := parser parseInline: '`te*s*t`'.
	expectedOutput := MarkdownLinkedList newFrom: {MarkdownCodeSpan newFrom: 'te*s*t'}.
	
	self assert: expectedOutput equals: output