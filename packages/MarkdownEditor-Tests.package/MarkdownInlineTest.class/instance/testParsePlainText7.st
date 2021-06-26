tests - emphasis
testParsePlainText7

	| expectedOutput output |
	output := parser parse: '_Hello World*'.
	expectedOutput := MarkdownLinkedList newFrom: {MarkdownString2 newFrom: '_Hello World*'}.
	
	self assert: expectedOutput equals: output