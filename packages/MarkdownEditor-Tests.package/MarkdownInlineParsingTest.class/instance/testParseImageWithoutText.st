tests - image
testParseImageWithoutText
	
	| output expectedOutput image |
	output := parser parseInline: '![](testdump.jpg)'.
	image := MarkdownImage new.
	image path: 'testdump.jpg'.
	expectedOutput := MarkdownLinkedList newFrom: {image}.
	
	self assert: expectedOutput equals: output