tests - emphasis
testParseEmphItalicAlternativeDelimiter
	
	| output expectedOutput emph |
	output := parser parseInline: '_hello_'.
	emph := MarkdownItalic2 new.
	emph children add: (MarkdownString2 newFrom: 'hello').
	expectedOutput := MarkdownLinkedList newFrom: {emph}.
	
	self assert: expectedOutput equals: output