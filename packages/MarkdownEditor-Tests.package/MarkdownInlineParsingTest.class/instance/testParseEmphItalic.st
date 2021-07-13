tests - emphasis
testParseEmphItalic
	
	| output expectedOutput emph |
	output := parser parseInline: '*hello*'.
	emph := MarkdownItalic new.
	emph children add: (MarkdownString newFrom: 'hello').
	expectedOutput := MarkdownLinkedList newFrom: {emph}.
	
	self assert: expectedOutput equals: output