tests - emphasis
testParseEmphStrikeAndItalic2
	
	| output expectedOutput emph emph2 |
	output := parser parseInline: '_~~hello~~_'.
	emph2 := MarkdownStrike new.
	emph2 children add: (MarkdownString newFrom: 'hello').
	emph := MarkdownItalic new.
	emph children add: emph2.
	expectedOutput := MarkdownLinkedList newFrom: {emph}.
	
	self assert: expectedOutput equals: output