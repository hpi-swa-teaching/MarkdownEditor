tests - emphasis
testParseEmphItalicAlternativeDelimiter2
	
	| output expectedOutput emph |
	output := parser parseInline: '_hello_ world'.
	emph := MarkdownItalic new.
	emph startPosition: 1.
	emph children add: (MarkdownString newFrom: 'hello' startingAt: 2).
	expectedOutput := MarkdownLinkedList newFrom: 
		{emph. MarkdownString newFrom: ' world' startingAt: 8}.
	
	self assert: expectedOutput equals: output