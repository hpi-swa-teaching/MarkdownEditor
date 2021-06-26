tests - emphasis
testParseEmphStrongAlternativeDelimiter3
	
	| output expectedOutput emph emph2 |
	output := parser parse: '__hello, __from__, squeak__'.
	emph := MarkdownBold2 new.
	emph2 := MarkdownBold2 new.
	emph2 children add: (MarkdownString2 newFrom: 'from').
	emph children add: (MarkdownString2 newFrom: 'hello, ');
		add: emph2;
		add: (MarkdownString2 newFrom: ', squeak').
	expectedOutput := MarkdownLinkedList newFrom: {emph}.
	
	self assert: expectedOutput equals: output