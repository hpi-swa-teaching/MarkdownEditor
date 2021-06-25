tests - image
testParseImage3
	
	| output expectedOutput image emph |
	output := parser parse: '![*hello*](testdump.jpg)'.
	
	image := MarkdownImage new.
	emph := MarkdownItalic2 new.
	emph children add: (MarkdownString2 newFrom: 'hello').
	image path: 'testdump.jpg'.
	image children add: emph.
	expectedOutput := MarkdownLinkedList newFrom: {image}.
	
	self assert: expectedOutput equals: output