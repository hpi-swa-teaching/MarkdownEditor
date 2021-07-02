tests - image
testParseImage2
	
	| output expectedOutput image emph |
	output := parser parseInline: '**hello**![hello](testdump.jpg)'.
	image := MarkdownImage new.
	image path: 'testdump.jpg'.
	image children add: (MarkdownString newFrom: 'hello').
	emph := MarkdownBold new.
	emph children add: (MarkdownString newFrom: 'hello').
	expectedOutput := MarkdownLinkedList newFrom: {emph. image}.
	
	self assert: expectedOutput equals: output