tests - emphasis
testParseEmphStrong2
	
	| output expectedOutput emph str |
	output := parser parseInline: '**Hello** World'.
	emph := MarkdownBold new.
	emph children add: (MarkdownString newFrom: 'Hello').
	str := MarkdownString newFrom: ' World'.
	expectedOutput := MarkdownLinkedList newFrom: {emph. str}.
	
	self assert: expectedOutput equals: output