tests - emphasis
testParsePlainText3

	| expectedOutput output |
	output := parser parseInline: 'say_"Hello World"__'.
	expectedOutput := MarkdownLinkedList newFrom: {MarkdownString newFrom: 'say_"Hello World"__'}.
	
	self assert: expectedOutput equals: output