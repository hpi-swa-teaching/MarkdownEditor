tests - emphasis
testParseEmphItalic2
	
	| output expectedOutput emph str |
	output := parser parseInline: 'Hello*World*'.
	str := MarkdownString newFrom: 'Hello'.
	emph := MarkdownItalic new.
	emph children add: (MarkdownString newFrom: 'World').
	expectedOutput := MarkdownLinkedList newFrom: {str. emph}.
	
	self assert: expectedOutput equals: output