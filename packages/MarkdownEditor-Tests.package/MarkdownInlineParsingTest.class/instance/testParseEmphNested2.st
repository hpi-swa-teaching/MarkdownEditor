tests - nested emphasis
testParseEmphNested2
    
	| output expectedOutput emph emphBold |
	output := parser parseInline: '*this should be italic**and this italic bold***'.
	emphBold := MarkdownBold new.
	emphBold children add: (MarkdownString newFrom: 'and this italic bold').
	emph := MarkdownItalic new.
 	emph children add: (MarkdownString newFrom: 'this should be italic').
	emph children add: emphBold.
	expectedOutput := MarkdownLinkedList newFrom: {emph}.

	self assert: expectedOutput equals: output
