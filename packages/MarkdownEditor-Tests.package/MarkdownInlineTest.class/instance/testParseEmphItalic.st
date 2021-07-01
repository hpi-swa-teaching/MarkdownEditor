tests - emphasis
testParseEmphItalic
	
	| output expectedOutput emph |
	output := parser parseInline: '*hello*'.
	emph := MarkdownItalic2 new.
	emph children add: (MarkdownString2 newFrom: 'hello').
	expectedOutput := MarkdownLinkedList newFrom: {emph}.
	
	self assert: expectedOutput equals: output