tests - nested emphasis
testParseEmphNested1
	
	| output expectedOutput emph emphBold |
	output := parser parseInline: '*__hello__*'.
	emph := MarkdownItalic new.
	emph startPosition: 1.
	emphBold := MarkdownBold new.
	emphBold startPosition: 2.
	emphBold children add: (MarkdownString newFrom: 'hello' startingAt: 4).
	emph children add: emphBold.
	expectedOutput := MarkdownLinkedList newFrom: {emph}.
	self assert: expectedOutput equals: output