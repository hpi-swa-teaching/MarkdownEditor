tests - emphasis
testParseEmphStrong
	
	| output expectedOutput emph |
	output := parser parse: '**hello**'.
	emph := MarkdownBold2 new.
	emph children add: (MarkdownString2 newFrom: 'hello').
	expectedOutput := LinkedList newFrom: {emph}.
	self assert: expectedOutput equals: output