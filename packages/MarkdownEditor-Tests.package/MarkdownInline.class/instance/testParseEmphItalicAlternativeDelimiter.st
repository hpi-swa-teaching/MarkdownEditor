tests - emphasis
testParseEmphItalicAlternativeDelimiter
	
	| output expectedOutput emph |
	output := parser parse: '_hello_'.
	
	emph := MarkdownItalic2 new.
	emph children add: (MarkdownString2 newFrom: 'hello').
	expectedOutput := LinkedList newFrom: {emph}.
	
	self assert: expectedOutput equals: output