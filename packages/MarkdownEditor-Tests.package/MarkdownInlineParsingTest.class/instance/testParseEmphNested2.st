tests - nested emphasis
testParseEmphNested2
    
	| output expectedOutput emph emphBold |
	output := parser parseInline: '*this should be italic**and this italic bold***' with: 1.
	emphBold := MarkdownBold new.
	emphBold startPosition: 23.
	emphBold children add: (MarkdownString newFrom: 'and this italic bold' startingAt: 25).
	emph := MarkdownItalic new.
	emph startPosition: 1.
 	emph children add: (MarkdownString newFrom: 'this should be italic' startingAt: 2).
	emph children add: emphBold.
	expectedOutput := MarkdownLinkedList newFrom: {emph}.

	self assert: expectedOutput equals: output
