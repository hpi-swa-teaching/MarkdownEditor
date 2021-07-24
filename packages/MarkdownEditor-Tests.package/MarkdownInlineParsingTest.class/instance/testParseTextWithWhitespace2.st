tests - emphasis
testParseTextWithWhitespace2

	| expectedOutput output |
	output := parser parseInline: '* Hello World *'.
	expectedOutput := MarkdownLinkedList newFrom: 
		{MarkdownString newFrom: '* Hello World *' startingAt: 1}.
	
	self assert: expectedOutput equals: output