tests - emphasis
testParseEmphStrongAlternativeDelimiter4
	
	| output expectedOutput emph |
	output := parser parse: 'hello-__(world)__'.
	
	emph := MarkdownBold2 new.
	emph children add: (MarkdownString2 newFrom: '(world)').
	expectedOutput := LinkedList newFrom: {(MarkdownString2 newFrom: 'hello-'). emph}.
	
	self assert: expectedOutput equals: output