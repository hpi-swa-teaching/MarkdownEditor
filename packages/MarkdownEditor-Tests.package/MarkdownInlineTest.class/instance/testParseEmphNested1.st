tests - nested emphasis
testParseEmphNested1
	
	| output expectedOutput emph emphBold |
	output := parser parseInline: '*__hello__*'.
	emph := MarkdownItalic new.
	emphBold := MarkdownBold new.
	emphBold children add: (MarkdownString newFrom: 'hello').
	emph children add: emphBold.
	expectedOutput := MarkdownLinkedList newFrom: {emph}.
	self assert: expectedOutput equals: output