tests - emphasis
testParsePlainText5

	| expectedOutput output |
	output := parser parseInline: '__(__Hello World)'.
	expectedOutput := MarkdownLinkedList newFrom: {MarkdownString newFrom: '__(__Hello World)'}.
	
	self assert: expectedOutput equals: output