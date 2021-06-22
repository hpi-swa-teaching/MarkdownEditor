tests - emphasis
testParseTextWithWhitespace3

	| expectedOutput output |
	output := parser parse: '*Hello World *'.
	
	expectedOutput := LinkedList newFrom: {MarkdownString2 newFrom: '*Hello World *'}.
	
	self assert: expectedOutput equals: output