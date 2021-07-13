tests - emphasis
testParseEmphStrong4
	
	| output expectedOutput emph |
	output := parser parseInline: '**_**'.
	emph := MarkdownBold new.
	emph children add: (MarkdownString newFrom: '_').
	expectedOutput := MarkdownLinkedList newFrom: {emph}.
	
	self assert: expectedOutput equals: output