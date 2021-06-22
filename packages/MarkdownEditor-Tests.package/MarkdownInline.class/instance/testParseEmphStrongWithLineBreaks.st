tests - emphasis
testParseEmphStrongWithLineBreaks
	
	| output expectedOutput emph |
	output := parser parse: '**hello',Character cr,'world**'.
	
	emph := MarkdownBold2 new.
	emph children add: (MarkdownString2 newFrom: 'hello',Character cr,'world').
	expectedOutput := LinkedList newFrom: {emph}.
	
	self assert: expectedOutput equals: output