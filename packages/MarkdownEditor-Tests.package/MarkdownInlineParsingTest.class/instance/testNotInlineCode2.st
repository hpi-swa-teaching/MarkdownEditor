tests - inline code
testNotInlineCode2

	| expectedOutput output |
	output := parser parseInline: '`test'.
	expectedOutput := MarkdownLinkedList newFrom: {MarkdownString newFrom: '`test'}.
	
	self assert: expectedOutput equals: output