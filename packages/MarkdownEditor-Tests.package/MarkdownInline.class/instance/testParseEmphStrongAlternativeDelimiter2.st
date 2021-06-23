tests - emphasis
testParseEmphStrongAlternativeDelimiter2
	
	| output expectedOutput emph |
	output := parser parse: '__hello__world'.
	
	emph := MarkdownBold2 new.
	emph children add: (MarkdownString2 newFrom: 'hello').
	expectedOutput := MarkdownLinkedList newFrom: {emph. MarkdownString2 newFrom: 'world'}.
	
	self assert: expectedOutput equals: output