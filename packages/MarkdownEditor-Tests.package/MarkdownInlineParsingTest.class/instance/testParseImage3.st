tests - image
testParseImage3
	
	| output expectedOutput image emph |
	output := parser parseInline: '![*hello*](testdump.jpg)'.
	image := MarkdownImage new.
	emph := MarkdownItalic new.
	emph children add: (MarkdownString newFrom: 'hello').
	image path: 'testdump.jpg'.
	image children add: emph.
	expectedOutput := MarkdownLinkedList newFrom: {image}.
	
	self assert: expectedOutput equals: output