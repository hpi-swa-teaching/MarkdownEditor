tests - emphasis
testParseEmphItalic5
	
	| output expectedOutput emph |
	output := parser parseInline: '___hello_' with: 1.
	emph := MarkdownItalic new.
	emph startPosition: 3.
	emph children add: (MarkdownString newFrom: 'hello' startingAt: 4).
	expectedOutput := MarkdownLinkedList newFrom: 
		{(MarkdownString newFrom: '__' startingAt: 1). emph}.
	
	self assert: expectedOutput equals: output