tests - emphasis
testParseEmphStrong6
	
	| output expectedOutput emph |
	output := parser parse: '**foo **bar baz**'.
	emph := MarkdownBold2 new.
	emph children add: (MarkdownString2 newFrom: 'bar baz').
	expectedOutput := MarkdownLinkedList newFrom: {(MarkdownString2 newFrom: '**foo '). emph}.
	
	self assert: expectedOutput equals: output