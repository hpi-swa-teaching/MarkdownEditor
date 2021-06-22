tests - emphasis
testParseEmphItalic
	
	| output expectedOutput emph |
	output := parser parse: '*hello*'.
	
	emph := MarkdownItalic2 new.
	emph children add: (MarkdownString2 newFrom: 'hello').
	expectedOutput := LinkedList newFrom: {emph}.
	
	self assert: expectedOutput equals: output