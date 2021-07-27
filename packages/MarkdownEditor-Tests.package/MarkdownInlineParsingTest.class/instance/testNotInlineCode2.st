tests - inline code
testNotInlineCode2

	| expectedOutput output |
	output := parser parseInline: '`test' with: 1.
	expectedOutput := MarkdownLinkedList 
		newFrom: {MarkdownString newFrom: '`test' startingAt: 1}.
	
	self assert: expectedOutput equals: output