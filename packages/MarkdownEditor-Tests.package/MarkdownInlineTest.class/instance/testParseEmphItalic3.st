tests - emphasis
testParseEmphItalic3
	
	| output expectedOutput emph str str2 |
	output := parser parseInline: 'Plain*Italic*Plain'.
	str := MarkdownString2 newFrom: 'Plain'.
	emph := MarkdownItalic2 new.
	emph children add: (MarkdownString2 newFrom: 'Italic').
	str2 := MarkdownString2 newFrom: 'Plain'.
	expectedOutput := MarkdownLinkedList newFrom: {str. emph. str}.
	
	self assert: expectedOutput equals: output