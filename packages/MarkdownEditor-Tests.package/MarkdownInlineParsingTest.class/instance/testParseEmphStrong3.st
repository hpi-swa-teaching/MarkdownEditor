tests - emphasis
testParseEmphStrong3
	
	| output expectedOutput emph str emph2 emph3 str2 |
	output := parser parseInline: 'hello******world*********squeak'.
	str := MarkdownString newFrom: 'hello' startingAt: 1.
	emph := MarkdownBold new
		startPosition: 6.
	emph2 := MarkdownBold new
		startPosition: 8.
	emph3 := MarkdownBold new
		startPosition: 10.
	emph3 children add: (MarkdownString newFrom: 'world' startingAt: 12).
	emph2 children add: emph3.
	emph children add: emph2.
	str2 := MarkdownString newFrom: '***squeak' startingAt: 17.
	expectedOutput := MarkdownLinkedList newFrom: {str. emph. str2}.
	
	self assert: expectedOutput equals: output