tests - emphasis
testParsePlainText2

	| expectedOutput output |
	output := parser parseInline: '_ Hello World__'.
	expectedOutput := MarkdownLinkedList newFrom: {MarkdownString newFrom: '_ Hello World__'}.
	
	self assert: expectedOutput equals: output