tests - inline code
testNotInlineCode

	| expectedOutput output |
	output := parser parseInline: '``test`'.
	expectedOutput := MarkdownLinkedList newFrom: {MarkdownString newFrom: '``test`'}.
	
	self assert: expectedOutput equals: output