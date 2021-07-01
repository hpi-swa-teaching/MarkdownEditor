tests - emphasis
testParseEmphItalic4
	
	| output expectedOutput emph |
	output := parser parseInline: '*_*'.
	emph := MarkdownItalic2 new.
	emph children add: (MarkdownString2 newFrom: '_').
	expectedOutput := MarkdownLinkedList newFrom: {emph}.
	
	self assert: expectedOutput equals: output