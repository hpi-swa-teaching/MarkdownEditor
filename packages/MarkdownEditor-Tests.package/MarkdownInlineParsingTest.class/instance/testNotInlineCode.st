tests - inline code
testNotInlineCode

	| expectedOutput output |
	output := parser parseInline: '``test`'.
	expectedOutput := MarkdownLinkedList 
		newFrom: {MarkdownString newFrom: '``test`' startingAt: 1}.
	
	self assert: expectedOutput equals: output