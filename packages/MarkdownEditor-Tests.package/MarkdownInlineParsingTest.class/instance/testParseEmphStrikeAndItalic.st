tests - emphasis
testParseEmphStrikeAndItalic
	
	| output expectedOutput emph emph2 |
	output := parser parseInline: '*~~hello~~*' with: 1.
	emph2 := MarkdownStrike new
		startPosition: 2.
	emph2 children add: (MarkdownString newFrom: 'hello' startingAt: 4).
	emph := MarkdownItalic new
		startPosition: 1.
	emph children add: emph2.
	expectedOutput := MarkdownLinkedList newFrom: {emph}.
	
	self assert: expectedOutput equals: output