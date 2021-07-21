tests - emphasis
testParseEmphStrong6
	
	| output expectedOutput emph |
	output := parser parseInline: '**foo **bar baz**'.
	emph := MarkdownBold new.
	emph children add: (MarkdownString newFrom: 'bar baz').
	expectedOutput := MarkdownLinkedList newFrom: {(MarkdownString newFrom: '**foo '). emph}.
	
	self assert: expectedOutput equals: output