tests - emphasis
testParseEmphItalic2
	
	| output expectedOutput emph str |
	output := parser parse: 'Hello*World*'.
	
	str := MarkdownString2 newFrom: 'Hello'.
	emph := MarkdownItalic2 new.
	emph children add: (MarkdownString2 newFrom: 'World').
	expectedOutput := MarkdownLinkedList newFrom: {str. emph}.
	
	self assert: expectedOutput equals: output