tests - emphasis
testParseEmphStrong6
	
	| output expectedOutput emph |
	output := parser parseInline: '**foo **bar baz**' with: 1.
	emph := MarkdownBold new
		startPosition: 7.
	emph children add: (MarkdownString newFrom: 'bar baz' startingAt: 9).
	expectedOutput := MarkdownLinkedList newFrom: 
		{(MarkdownString newFrom: '**foo ' startingAt: 1). emph}.
	
	self assert: expectedOutput equals: output