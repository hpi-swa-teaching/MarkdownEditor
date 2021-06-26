tests - emphasis
testParseEmphStrikeAndItalic
	
	| output expectedOutput emph emph2 |
	output := parser parse: '*~~hello~~*'.
	emph2 := MarkdownStrike2 new.
	emph2 children add: (MarkdownString2 newFrom: 'hello').
	emph := MarkdownItalic2 new.
	emph children add: emph2.
	expectedOutput := MarkdownLinkedList newFrom: {emph}.
	
	self assert: expectedOutput equals: output