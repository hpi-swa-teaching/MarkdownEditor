tests - emphasis
testParseTextWithWhitespace

	| expectedOutput output |
	output := parser parseInline: 'say * Hello World*' with: 1.
	expectedOutput := MarkdownLinkedList newFrom: 
		{MarkdownString newFrom: 'say * Hello World*' startingAt: 1}.
	
	self assert: expectedOutput equals: output