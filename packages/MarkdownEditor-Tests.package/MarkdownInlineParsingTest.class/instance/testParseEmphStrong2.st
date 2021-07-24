tests - emphasis
testParseEmphStrong2
	
	| output expectedOutput emph str |
	output := parser parseInline: '**Hello** World'.
	emph := MarkdownBold new
		startPosition: 1.
	emph children add: (MarkdownString newFrom: 'Hello' startingAt: 3).
	str := MarkdownString newFrom: ' World' startingAt: 10.
	expectedOutput := MarkdownLinkedList newFrom: {emph. str}.
	
	self assert: expectedOutput equals: output