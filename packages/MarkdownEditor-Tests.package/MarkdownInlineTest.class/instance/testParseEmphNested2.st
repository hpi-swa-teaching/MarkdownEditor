tests - nested emphasis
testParseEmphNested2
    
	| output expectedOutput emph emphBold |
	output := parser parse: '*this should be italic**and this italic bold***'.
	emphBold := MarkdownBold2 new.
	emphBold children add: (MarkdownString2 newFrom: 'and this italic bold').
	emph := MarkdownItalic2 new.
 	emph children add: (MarkdownString2 newFrom: 'this should be italic').
	emph children add: emphBold.
	expectedOutput := MarkdownLinkedList newFrom: {emph}.

	self assert: expectedOutput equals: output
