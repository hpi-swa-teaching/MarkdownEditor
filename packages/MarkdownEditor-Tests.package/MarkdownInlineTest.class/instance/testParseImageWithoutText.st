tests - image
testParseImageWithoutText
	
	| output expectedOutput image |
	output := parser parse: '![](testdump.jpg)'.
	image := MarkdownImage new.
	image path: 'testdump.jpg'.
	expectedOutput := MarkdownLinkedList newFrom: {image}.
	
	self assert: expectedOutput equals: output