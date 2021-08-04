tests - emphasis
testParsePlainText7

	| expectedOutput output |
	output := parser parseInline: '_Hello World*' with: 1.
	expectedOutput := MarkdownLinkedList newFrom: 
		{MarkdownString newFrom: '_Hello World*' startingAt: 1}.
	
	self assert: expectedOutput equals: output