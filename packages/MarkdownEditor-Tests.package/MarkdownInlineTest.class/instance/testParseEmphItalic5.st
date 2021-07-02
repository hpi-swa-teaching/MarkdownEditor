tests - emphasis
testParseEmphItalic5
	
	| output expectedOutput emph |
	output := parser parseInline: '___hello_'.
	emph := MarkdownItalic new.
	emph children add: (MarkdownString newFrom: 'hello').
	expectedOutput := MarkdownLinkedList newFrom: {(MarkdownString newFrom: '__'). emph}.
	
	self assert: expectedOutput equals: output