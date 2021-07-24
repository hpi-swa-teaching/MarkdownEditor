tests - emphasis
testParseEmphItalic
	
	| output expectedOutput emph |
	output := parser parseInline: '*hello*'.
	emph := MarkdownItalic new.
	emph startPosition: 1.
	emph children add: (MarkdownString newFrom: 'hello' startingAt: 2).
	expectedOutput := MarkdownLinkedList newFrom: {emph}.
	
	self assert: expectedOutput equals: output