tests - emphasis
testParseTextWithNewLine

	| expectedOutput output |
	output := parser parse: '*Hello World', Character cr, '*'.
	expectedOutput := LinkedList newFrom: {MarkdownString2 newFrom: '*Hello World', Character cr, '*'.}.
	self assert: expectedOutput equals: output