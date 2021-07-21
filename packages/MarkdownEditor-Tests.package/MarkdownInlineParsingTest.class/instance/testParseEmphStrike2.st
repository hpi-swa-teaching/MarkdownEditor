tests - emphasis
testParseEmphStrike2
	
	| output expectedOutput emph |
	output := parser parseInline: '~~_hello_~~'.
	emph := MarkdownStrike new.
	emph children add: (MarkdownString newFrom: '_hello_').
	expectedOutput := MarkdownLinkedList newFrom: {emph}.
	
	self assert: expectedOutput equals: output