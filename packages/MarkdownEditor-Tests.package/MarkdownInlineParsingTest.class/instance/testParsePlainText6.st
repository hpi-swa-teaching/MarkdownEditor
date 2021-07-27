tests - emphasis
testParsePlainText6

	| expectedOutput output |
	output := parser parseInline: 'say_Hello World_' with: 1.
	expectedOutput := MarkdownLinkedList newFrom: 
		{MarkdownString newFrom: 'say_Hello World_' startingAt: 1}.
	
	self assert: expectedOutput equals: output