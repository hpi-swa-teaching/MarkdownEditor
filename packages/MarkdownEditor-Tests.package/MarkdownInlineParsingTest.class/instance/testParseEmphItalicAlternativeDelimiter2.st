tests - emphasis
testParseEmphItalicAlternativeDelimiter2
	
	| output expectedOutput emph |
	output := parser parseInline: '_hello_ world'.
	emph := MarkdownItalic new.
	emph children add: (MarkdownString newFrom: 'hello').
	expectedOutput := MarkdownLinkedList newFrom: {emph. MarkdownString newFrom: ' world'}.
	
	self assert: expectedOutput equals: output