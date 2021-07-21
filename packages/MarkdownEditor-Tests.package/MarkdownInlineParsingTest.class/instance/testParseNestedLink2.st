tests - links
testParseNestedLink2
	
	| expectedOutput link output str str2 str3 str4 emph |
	output := parser parseInline: '[hpi *[italic [more italic](https://hpi.de)](https://hpi2.de)*](https://hpi3.de)'.
	str := MarkdownString newFrom: '[hpi '.
	emph := MarkdownItalic new.
	str2 := MarkdownString newFrom: '[italic '.
	link := MarkdownLink newFrom: 'https://hpi.de'.
	link children add: (MarkdownString newFrom: 'more italic').
	str3 := MarkdownString newFrom: '](https://hpi2.de)'.
	emph children 
		add: str2;
		add: link;
		add: str3.
	str4 := MarkdownString newFrom: '](https://hpi3.de)'.
	expectedOutput := MarkdownLinkedList newFrom: {str. emph. str4}.
	
	self assert: expectedOutput equals: output