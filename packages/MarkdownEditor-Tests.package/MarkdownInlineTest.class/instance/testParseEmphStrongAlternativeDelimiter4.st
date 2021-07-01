tests - emphasis
testParseEmphStrongAlternativeDelimiter4
	
	| output expectedOutput emph |
	output := parser parseInline: 'hello-__(world)__'.
	emph := MarkdownBold2 new.
	emph children add: (MarkdownString2 newFrom: '(world)').
	expectedOutput := MarkdownLinkedList newFrom: {(MarkdownString2 newFrom: 'hello-'). emph}.
	
	self assert: expectedOutput equals: output