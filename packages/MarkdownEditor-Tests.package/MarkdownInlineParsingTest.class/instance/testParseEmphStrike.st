tests - emphasis
testParseEmphStrike
	
	| output expectedOutput emph |
	output := parser parseInline: '~~hello~~' with: 1.
	emph := MarkdownStrike new
		startPosition: 1.
	emph children add: (MarkdownString newFrom: 'hello' startingAt: 3).
	expectedOutput := MarkdownLinkedList newFrom: {emph}.
	
	self assert: expectedOutput equals: output