tests - image
testParseImage2
	
	| output expectedOutput image emph |
	output := parser parseInline: '**hello**![hello](testdump.jpg)'.
	image := MarkdownImage new
		startPosition: 10.
	image path: 'testdump.jpg'.
	image children add: (MarkdownString newFrom: 'hello' startingAt: 12).
	emph := MarkdownBold new
		startPosition: 1.
	emph children add: (MarkdownString newFrom: 'hello' startingAt: 3).
	expectedOutput := MarkdownLinkedList newFrom: {emph. image}.
	
	self assert: expectedOutput equals: output