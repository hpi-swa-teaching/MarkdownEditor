tests - emphasis
testParseEmphItalic3
	
	| output expectedOutput emph str str2 |
	output := parser parseInline: 'Plain*Italic*Plain'.
	str := MarkdownString newFrom: 'Plain'.
	emph := MarkdownItalic new.
	emph children add: (MarkdownString newFrom: 'Italic').
	str2 := MarkdownString newFrom: 'Plain'.
	expectedOutput := MarkdownLinkedList newFrom: {str. emph. str}.
	
	self assert: expectedOutput equals: output