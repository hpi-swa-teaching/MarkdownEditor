tests - image
testParseImage
	
	| output expectedOutput image |
	output := parser parseInlineElementsFrom: '![hello](testdump.jpg)'.
	image := MarkdownImage new.
	image path: 'testdump.jpg'.
	image children add: (MarkdownString2 newFrom: 'hello').
	expectedOutput := OrderedCollection newFrom: {image}.
	self assert: expectedOutput equals: output