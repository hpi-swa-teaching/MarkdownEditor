tests - image
testParseNestedImageWithLink2
	
	| expectedOutput image link output str str2 str3 str4 |
	output := parser parseInline: 'string ![[[hpi](https://hpi.de)](https://hpi2.de)](https://hpi3.de) string'.
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
	str3 := MarkdownString newFrom: 'string '.
	str4 := MarkdownString newFrom: ' string'.
	expectedOutput := MarkdownLinkedList newFrom: {str3. image. str4}.
	
	self assert: expectedOutput equals: output