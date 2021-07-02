tests - emphasis
testParseEmphItalicAlternativeDelimiter
	
	| output expectedOutput emph |
	output := parser parseInline: '_hello_'.
	emph := MarkdownItalic new.
	emph children add: (MarkdownString newFrom: 'hello').
	expectedOutput := MarkdownLinkedList newFrom: {emph}.
	
	self assert: expectedOutput equals: output