tests - emphasis
testParseTextWithNewLine

	| expectedOutput output |
	output := parser parseInline: '*Hello World', Character cr, '*' with: 1.
	expectedOutput := MarkdownLinkedList newFrom: 
		{MarkdownString newFrom: '*Hello World', Character cr, '*' startingAt: 1}.
	
	self assert: expectedOutput equals: output