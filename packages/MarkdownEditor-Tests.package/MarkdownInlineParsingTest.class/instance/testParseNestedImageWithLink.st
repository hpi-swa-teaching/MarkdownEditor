tests - image
testParseNestedImageWithLink
	
	| expectedOutput image link output str str2 |
	output := parser parseInline: '![[[hpi](https://hpi.de)](https://hpi2.de)](https://hpi3.de)'.
	image := MarkdownImage new
		startPosition: 1.
	image path: 'https://hpi3.de'.
	str := MarkdownString newFrom: '[' startingAt: 1.
	link := MarkdownLink newFrom: 'https://hpi.de'.
	link startPosition: 2.
	link children add: (MarkdownString newFrom: 'hpi' startingAt: 1).
	str2 := MarkdownString newFrom: '](https://hpi2.de)' startingAt: 23.
	image children 
		add: str;
		add: link;
		add: str2.
	expectedOutput := MarkdownLinkedList newFrom: {image}.
	
	self assert: expectedOutput equals: output