tests - emphasis
testParseEmphStrongAlternativeDelimiter2
	
	| output expectedOutput emph |
	output := parser parseInline: '__hello__ world'.
	emph := MarkdownBold new.
	emph children add: (MarkdownString newFrom: 'hello').
	expectedOutput := MarkdownLinkedList newFrom: {emph. MarkdownString newFrom: ' world'}.
	
	self assert: expectedOutput equals: output