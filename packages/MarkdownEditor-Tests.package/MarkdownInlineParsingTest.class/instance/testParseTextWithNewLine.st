tests - emphasis
testParseTextWithNewLine

	| expectedOutput output |
	output := parser parseInline: '*Hello World', Character cr, '*'.
	expectedOutput := MarkdownLinkedList newFrom: {MarkdownString newFrom: '*Hello World', Character cr, '*'}.
	
	self assert: expectedOutput equals: output