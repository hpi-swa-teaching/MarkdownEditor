tests - emphasis
testParseEmphStrikeAndItalic2
	
	| output expectedOutput emph emph2 |
	output := parser parse: '_~~hello~~_'.
	emph2 := MarkdownStrike2 new.
	emph2 children add: (MarkdownString2 newFrom: 'hello').
	emph := MarkdownItalic2 new.
	emph children add: emph2.
	expectedOutput := MarkdownLinkedList newFrom: {emph}.
	
	self assert: expectedOutput equals: output