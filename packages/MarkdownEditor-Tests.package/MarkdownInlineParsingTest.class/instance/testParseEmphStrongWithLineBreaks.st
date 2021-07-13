tests - emphasis
testParseEmphStrongWithLineBreaks
	
	| output expectedOutput emph |
	output := parser parseInline: '**hello',Character cr,'world**'.
	emph := MarkdownBold new.
	emph children add: (MarkdownString newFrom: 'hello',Character cr,'world').
	expectedOutput := MarkdownLinkedList newFrom: {emph}.
	
	self assert: expectedOutput equals: output