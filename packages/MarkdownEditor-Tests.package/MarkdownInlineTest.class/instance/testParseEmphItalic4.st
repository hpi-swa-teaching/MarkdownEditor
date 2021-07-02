tests - emphasis
testParseEmphItalic4
	
	| output expectedOutput emph |
	output := parser parseInline: '*_*'.
	emph := MarkdownItalic new.
	emph children add: (MarkdownString newFrom: '_').
	expectedOutput := MarkdownLinkedList newFrom: {emph}.
	
	self assert: expectedOutput equals: output