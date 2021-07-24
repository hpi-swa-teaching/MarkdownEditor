tests - emphasis
testParseEmphItalic2
	
	| output expectedOutput emph str |
	output := parser parseInline: 'Hello*World*'.
	str := MarkdownString newFrom: 'Hello' startingAt: 1.
	emph := MarkdownItalic new.
	emph startPosition: 6.
	emph children add: (MarkdownString newFrom: 'World' startingAt: 7).
	expectedOutput := MarkdownLinkedList newFrom: {str. emph}.
	
	self assert: expectedOutput equals: output