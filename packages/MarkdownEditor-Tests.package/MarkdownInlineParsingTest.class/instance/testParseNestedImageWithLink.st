tests - image
testParseNestedImageWithLink
	
	| expectedOutput image link output str str2 |
	output := parser parseInline: '![[[hpi](https://hpi.de)](https://hpi2.de)](https://hpi3.de)' with: 1.
	image := MarkdownImage new
		startPosition: 1.
	image path: 'https://hpi3.de'.
	str := MarkdownString newFrom: '[' startingAt: 3.
	link := MarkdownLink newFrom: 'https://hpi.de'.
	link startPosition: 4.
	link children add: (MarkdownString newFrom: 'hpi' startingAt: 5).
	str2 := MarkdownString newFrom: '](https://hpi2.de)' startingAt: 25.
	image children 
		add: str;
		add: link;
		add: str2.
	expectedOutput := MarkdownLinkedList newFrom: {image}.
	
	self assert: expectedOutput equals: output