tests - links
testParseNestedLink2
	
	| expectedOutput link output str str2 str3 str4 emph |
	output := parser parseInline: '[hpi *[italic [more italic](https://hpi.de)](https://hpi2.de)*](https://hpi3.de)'.
	str := MarkdownString2 newFrom: '[hpi '.
	emph := MarkdownItalic2 new.
	str2 := MarkdownString2 newFrom: '[italic '.
	link := MarkdownLink2 newFrom: 'https://hpi.de'.
	link children add: (MarkdownString2 newFrom: 'more italic').
	str3 := MarkdownString2 newFrom: '](https://hpi2.de)'.
	emph children 
		add: str2;
		add: link;
		add: str3.
	str4 := MarkdownString2 newFrom: '](https://hpi3.de)'.
	expectedOutput := MarkdownLinkedList newFrom: {str. emph. str4}.
	
	self assert: expectedOutput equals: output