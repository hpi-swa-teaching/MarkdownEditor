tests - emphasis
testParsePlainText5

	| expectedOutput output |
	output := parser parse: '__(__Hello World)'.
	
	expectedOutput := MarkdownLinkedList newFrom: {MarkdownString2 newFrom: '__(__Hello World)'}.
	
	self assert: expectedOutput equals: output