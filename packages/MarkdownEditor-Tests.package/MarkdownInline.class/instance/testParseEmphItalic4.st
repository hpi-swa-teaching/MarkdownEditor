tests - emphasis
testParseEmphItalic4
	
	| output expectedOutput emph |
	output := parser parse: '*_*'.
	
	emph := MarkdownItalic2 new.
	emph children add: (MarkdownString2 newFrom: '_').
	expectedOutput := LinkedList newFrom: {emph}.
	
	self assert: expectedOutput equals: output