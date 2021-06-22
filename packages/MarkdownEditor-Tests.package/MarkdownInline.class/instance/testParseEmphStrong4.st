tests - emphasis
testParseEmphStrong4
	
	| output expectedOutput emph |
	output := parser parse: '**_**'.
	
	emph := MarkdownBold2 new.
	emph children add: (MarkdownString2 newFrom: '_').
	expectedOutput := LinkedList newFrom: {emph}.
	
	self assert: expectedOutput equals: output