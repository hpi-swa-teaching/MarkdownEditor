tests - emphasis
testParsePlainText

	| expectedOutput output |
	output := parser parseInline: 'Hello World'.
	expectedOutput := MarkdownLinkedList newFrom: {MarkdownString newFrom: 'Hello World'}.
	
	self assert: expectedOutput equals: output