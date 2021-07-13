tests - emphasis
testParsePlainText6

	| expectedOutput output |
	output := parser parseInline: 'say_Hello World_'.
	expectedOutput := MarkdownLinkedList newFrom: {MarkdownString newFrom: 'say_Hello World_'}.
	
	self assert: expectedOutput equals: output