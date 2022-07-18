tests - emphasis
testParseEmphStrong4
	
	| output expectedOutput emph |
	output := parser parseInline: '**_**' with: 1.
	emph := MarkdownBold new
		startPosition: 1.
	emph children add: (MarkdownString newFrom: '_' startingAt: 3).
	expectedOutput := MarkdownLinkedList newFrom: {emph}.
	
	self assert: expectedOutput equals: output