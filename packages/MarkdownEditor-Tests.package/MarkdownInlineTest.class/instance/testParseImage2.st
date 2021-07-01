tests - image
testParseImage2
	
	| output expectedOutput image emph |
	output := parser parseInline: '**hello**![hello](testdump.jpg)'.
	image := MarkdownImage new.
	image path: 'testdump.jpg'.
	image children add: (MarkdownString2 newFrom: 'hello').
	emph := MarkdownBold2 new.
	emph children add: (MarkdownString2 newFrom: 'hello').
	expectedOutput := MarkdownLinkedList newFrom: {emph. image}.
	
	self assert: expectedOutput equals: output