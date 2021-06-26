tests - image
testParseNestedImage
	
	| output expectedOutput image image2 str |
	output := parser parse: '![hpi ![hpi2](https://hpi2.de)](https://hpi.de)'.
	image := MarkdownImage new.
	image path: 'https://hpi.de'.
	str := MarkdownString2 newFrom: 'hpi '.
	image2 := MarkdownImage new.
	image2 path: 'https://hpi2.de'.
	image2 children add: (MarkdownString2 newFrom: 'hpi2').
	image children 
		add: str;
		add: image2.
	expectedOutput := MarkdownLinkedList newFrom: {image}.
	
	self assert: expectedOutput equals: output