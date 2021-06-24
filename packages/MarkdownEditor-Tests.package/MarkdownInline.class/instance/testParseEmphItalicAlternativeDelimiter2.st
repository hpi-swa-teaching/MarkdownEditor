tests - emphasis
testParseEmphItalicAlternativeDelimiter2
	
	| output expectedOutput emph |
	output := parser parse: '_hello_ world'.
	
	emph := MarkdownItalic2 new.
	emph children add: (MarkdownString2 newFrom: 'hello').
	expectedOutput := MarkdownLinkedList newFrom: {emph. MarkdownString2 newFrom: ' world'}.
	
	self assert: expectedOutput equals: output