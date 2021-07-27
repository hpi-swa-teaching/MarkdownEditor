tests - emphasis
testParseEmphItalic3
	
	| output expectedOutput emph str str2 |
	output := parser parseInline: 'Plain*Italic*Plain' with: 1.
	str := MarkdownString newFrom: 'Plain' startingAt: 1.
	emph := MarkdownItalic new.
	emph startPosition: 6.
	emph children add: (MarkdownString newFrom: 'Italic' startingAt: 7).
	str2 := MarkdownString newFrom: 'Plain' startingAt: 14.
	expectedOutput := MarkdownLinkedList newFrom: {str. emph. str2}.
	
	self assert: expectedOutput equals: output