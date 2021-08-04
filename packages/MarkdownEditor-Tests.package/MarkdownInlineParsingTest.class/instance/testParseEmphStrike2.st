tests - emphasis
testParseEmphStrike2
	
	| output expectedOutput emph |
	output := parser parseInline: '~~_hello_~~' with: 1.
	emph := MarkdownStrike new
		startPosition: 1.
	emph children add: (MarkdownString newFrom: '_hello_' startingAt: 3).
	expectedOutput := MarkdownLinkedList newFrom: {emph}.
	
	self assert: expectedOutput equals: output