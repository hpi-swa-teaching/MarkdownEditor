tests - emphasis
testParseEmphStrong2
	
	| output expectedOutput emph str |
	output := parser parse: '**Hello** World'.
	
	emph := MarkdownBold2 new.
	emph children add: (MarkdownString2 newFrom: 'Hello').
	str := MarkdownString2 newFrom: ' World'.
	expectedOutput := MarkdownLinkedList newFrom: {emph. str}.
	
	self assert: expectedOutput equals: output