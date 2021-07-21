tests - image
testParseImage
	
	| output expectedOutput image |
	output := parser parseInline: '![hello](testdump.jpg)'.
	image := MarkdownImage new.
	image path: 'testdump.jpg'.
	image children add: (MarkdownString newFrom: 'hello').
	expectedOutput := MarkdownLinkedList newFrom: {image}.
	
	self assert: expectedOutput equals: output