tests - emphasis
testParseEmphStrike
	
	| output expectedOutput emph |
	output := parser parseInline: '~~hello~~'.
	emph := MarkdownStrike new.
	emph children add: (MarkdownString newFrom: 'hello').
	expectedOutput := MarkdownLinkedList newFrom: {emph}.
	
	self assert: expectedOutput equals: output