tests - emphasis
testParseEmphItalic5
	
	| output expectedOutput emph |
	output := parser parse: '___hello_'.
	
	emph := MarkdownItalic2 new.
	emph children add: (MarkdownString2 newFrom: 'hello').
	expectedOutput := MarkdownLinkedList newFrom: {(MarkdownString2 newFrom: '__'). emph}.
	
	self assert: expectedOutput equals: output