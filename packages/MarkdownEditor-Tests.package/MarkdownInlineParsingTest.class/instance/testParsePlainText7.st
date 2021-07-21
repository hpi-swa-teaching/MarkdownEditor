tests - emphasis
testParsePlainText7

	| expectedOutput output |
	output := parser parseInline: '_Hello World*'.
	expectedOutput := MarkdownLinkedList newFrom: {MarkdownString newFrom: '_Hello World*'}.
	
	self assert: expectedOutput equals: output