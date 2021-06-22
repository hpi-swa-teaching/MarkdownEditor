tests - emphasis
testParsePlainText3

	| expectedOutput output |
	output := parser parse: 'say_"Hello World"__'.
	
	expectedOutput := LinkedList newFrom: {MarkdownString2 newFrom: 'say_"Hello World"__'}.
	
	self assert: expectedOutput equals: output