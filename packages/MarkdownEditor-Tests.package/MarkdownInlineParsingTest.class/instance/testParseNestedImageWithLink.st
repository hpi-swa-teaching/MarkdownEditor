tests - image
testParseNestedImageWithLink
	
	| expectedOutput image link output str str2 |
	output := parser parseInline: '![[[hpi](https://hpi.de)](https://hpi2.de)](https://hpi3.de)'.
	image := MarkdownImage new.
	image path: 'https://hpi3.de'.
	str := MarkdownString newFrom: '['.
	link := MarkdownLink newFrom: 'https://hpi.de'.
	link children add: (MarkdownString newFrom: 'hpi').
	str2 := MarkdownString newFrom: '](https://hpi2.de)'.
	image children 
		add: str;
		add: link;
		add: str2.
	expectedOutput := MarkdownLinkedList newFrom: {image}.
	
	self assert: expectedOutput equals: output