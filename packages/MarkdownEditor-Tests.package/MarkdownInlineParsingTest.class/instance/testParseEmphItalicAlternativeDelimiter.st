tests - emphasis
testParseEmphItalicAlternativeDelimiter
	
	| output expectedOutput emph |
	output := parser parseInline: '_hello_' with: 1.
	emph := MarkdownItalic new.
	emph startPosition: 1.
	emph children add: (MarkdownString newFrom: 'hello' startingAt: 2).
	expectedOutput := MarkdownLinkedList newFrom: {emph}.
	
	self assert: expectedOutput equals: output