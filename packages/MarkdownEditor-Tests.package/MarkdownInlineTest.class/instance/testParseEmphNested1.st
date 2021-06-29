tests - nested emphasis
testParseEmphNested1
	
	| output expectedOutput emph emphBold |
	output := parser parse: '*__hello__*'.
	emph := MarkdownItalic2 new.
	emphBold := MarkdownBold2 new.
	emphBold children add: (MarkdownString2 newFrom: 'hello').
	emph children add: emphBold.
	expectedOutput := MarkdownLinkedList newFrom: {emph}.
	self assert: expectedOutput equals: output