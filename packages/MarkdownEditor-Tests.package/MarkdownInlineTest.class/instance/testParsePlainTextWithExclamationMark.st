tests - emphasis
testParsePlainTextWithExclamationMark

	| expectedOutput output |
	output := parser parseInline: 'Hello World!'.
	expectedOutput := MarkdownLinkedList newFrom: {MarkdownString2 newFrom: 'Hello World!'}.
	
	self assert: expectedOutput equals: output