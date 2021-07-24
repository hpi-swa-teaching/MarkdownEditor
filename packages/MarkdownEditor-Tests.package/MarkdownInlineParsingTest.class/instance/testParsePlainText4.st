tests - emphasis
testParsePlainText4

	| expectedOutput output |
	output := parser parseInline: 'say__Hello World__'.
	expectedOutput := MarkdownLinkedList newFrom: 
		{MarkdownString newFrom: 'say__Hello World__' startingAt: 1}.
	
	self assert: expectedOutput equals: output