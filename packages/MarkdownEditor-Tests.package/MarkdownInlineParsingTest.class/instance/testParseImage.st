tests - image
testParseImage
	
	| output expectedOutput image |
	output := parser parseInline: '![hello](testdump.jpg)'.
	image := MarkdownImage new.
	image path: 'testdump.jpg';
		startPosition: 1.
	image children add: (MarkdownString newFrom: 'hello' startingAt: 3).
	expectedOutput := MarkdownLinkedList newFrom: {image}.
	
	self assert: expectedOutput equals: output