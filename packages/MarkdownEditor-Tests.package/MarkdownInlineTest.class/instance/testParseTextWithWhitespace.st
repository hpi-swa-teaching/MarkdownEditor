tests - emphasis
testParseTextWithWhitespace

	| expectedOutput output |
	output := parser parseInline: 'say * Hello World*'.
	expectedOutput := MarkdownLinkedList newFrom: {MarkdownString newFrom: 'say * Hello World*'}.
	
	self assert: expectedOutput equals: output