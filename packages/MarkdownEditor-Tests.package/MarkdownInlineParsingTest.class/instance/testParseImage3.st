tests - image
testParseImage3
	
	| output expectedOutput image emph |
	output := parser parseInline: '![*hello*](testdump.jpg)' with: 1.
	image := MarkdownImage new
		startPosition: 1;
		path: 'testdump.jpg'.
	emph := MarkdownItalic new
		startPosition: 3.
	emph children add: (MarkdownString newFrom: 'hello' startingAt: 4).
	image children add: emph.
	expectedOutput := MarkdownLinkedList newFrom: {image}.
	
	self assert: expectedOutput equals: output