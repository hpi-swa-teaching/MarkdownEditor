tests - emphasis
testParsePlainText5

	| expectedOutput output |
	output := parser parseInline: '__(__Hello World)' with: 1.
	expectedOutput := MarkdownLinkedList newFrom: 
		{MarkdownString newFrom: '__(__Hello World)' startingAt: 1}.
	
	self assert: expectedOutput equals: output