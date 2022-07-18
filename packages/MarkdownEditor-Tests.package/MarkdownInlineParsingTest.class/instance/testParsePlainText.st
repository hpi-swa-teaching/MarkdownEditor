tests - emphasis
testParsePlainText

	| expectedOutput output |
	output := parser parseInline: 'Hello World' with: 1.
	expectedOutput := MarkdownLinkedList newFrom: 
		{MarkdownString newFrom: 'Hello World' startingAt: 1}.
	
	self assert: expectedOutput equals: output