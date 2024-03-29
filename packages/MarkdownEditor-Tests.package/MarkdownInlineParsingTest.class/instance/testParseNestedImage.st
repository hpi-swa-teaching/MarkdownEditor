tests - image
testParseNestedImage
	
	| output expectedOutput image image2 str |
	output := parser parseInline: '![hpi ![hpi2](https://hpi2.de)](https://hpi.de)' with: 1.
	image := MarkdownImage new
		startPosition: 1;
		path: 'https://hpi.de'.
	str := MarkdownString newFrom: 'hpi ' startingAt: 3.
	image2 := MarkdownImage new
		startPosition: 7;
		path: 'https://hpi2.de'.
	image2 children add: (MarkdownString newFrom: 'hpi2' startingAt: 9).
	image children 
		add: str;
		add: image2.
	expectedOutput := MarkdownLinkedList newFrom: {image}.
	
	self assert: expectedOutput equals: output