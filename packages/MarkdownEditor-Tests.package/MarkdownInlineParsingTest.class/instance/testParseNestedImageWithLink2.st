tests - image
testParseNestedImageWithLink2
	
	| expectedOutput image link output str str2 str3 str4 |
	output := parser parseInline: 'string ![[[hpi](https://hpi.de)](https://hpi2.de)](https://hpi3.de) string'.
	image := MarkdownImage new
		startPosition: 8.
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
	str3 := MarkdownString newFrom: 'string ' startingAt: 1.
	str4 := MarkdownString newFrom: ' string' startingAt: 68.
	expectedOutput := MarkdownLinkedList newFrom: {str3. image. str4}.
	
	self assert: expectedOutput equals: output