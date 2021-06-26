tests - emphasis
testParseEmphStrike2
	
	| output expectedOutput emph |
	output := parser parse: '~~_hello_~~'.
	emph := MarkdownStrike2 new.
	emph children add: (MarkdownString2 newFrom: '_hello_').
	expectedOutput := MarkdownLinkedList newFrom: {emph}.
	
	self assert: expectedOutput equals: output