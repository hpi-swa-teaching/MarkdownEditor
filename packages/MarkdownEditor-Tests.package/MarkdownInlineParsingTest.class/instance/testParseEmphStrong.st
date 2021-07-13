tests - emphasis
testParseEmphStrong
	
	| output expectedOutput emph |
	output := parser parseInline: '**hello**'.
	emph := MarkdownBold new.
	emph children add: (MarkdownString newFrom: 'hello').
	expectedOutput := MarkdownLinkedList newFrom: {emph}.
	
	self assert: expectedOutput equals: output