tests - image
testParseImageWithoutText
	
	| output expectedOutput image |
	output := parser parseInline: '![](testdump.jpg)' with: 1.
	image := MarkdownImage new
		startPosition: 1;
		path: 'testdump.jpg'.
	expectedOutput := MarkdownLinkedList newFrom: {image}.
	
	self assert: expectedOutput equals: output