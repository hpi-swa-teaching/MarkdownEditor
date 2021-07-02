tests - emphasis
testParseEmphStrongAlternativeDelimiter4
	
	| output expectedOutput emph |
	output := parser parseInline: 'hello-__(world)__'.
	emph := MarkdownBold new.
	emph children add: (MarkdownString newFrom: '(world)').
	expectedOutput := MarkdownLinkedList newFrom: {(MarkdownString newFrom: 'hello-'). emph}.
	
	self assert: expectedOutput equals: output