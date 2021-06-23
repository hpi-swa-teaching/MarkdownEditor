tests - emphasis
testParsePlainText4

	| expectedOutput output |
	output := parser parse: 'say__Hello World__'.
	
	expectedOutput := LinkedList newFrom: {MarkdownString2 newFrom: 'say__Hello World__'}.
	
	self assert: expectedOutput equals: output