tests - links
testParseNestedLink2
	
	| expectedOutput link output str str2 str3 str4 emph |
	output := parser parseInline: '[hpi *[italic [more italic](https://hpi.de)](https://hpi2.de)*](https://hpi3.de)' with: 1.
	str := MarkdownString newFrom: '[hpi ' startingAt: 1.
	emph := MarkdownItalic new
		startPosition: 6.
	str2 := MarkdownString newFrom: '[italic ' startingAt: 7.
	link := MarkdownLink newFrom: 'https://hpi.de'.
	link startPosition: 15.
	link children add: (MarkdownString newFrom: 'more italic' startingAt: 16).
	str3 := MarkdownString newFrom: '](https://hpi2.de)' startingAt: 44.
	emph children 
		add: str2;
		add: link;
		add: str3.
	str4 := MarkdownString newFrom: '](https://hpi3.de)' startingAt: 63.
	expectedOutput := MarkdownLinkedList newFrom: {str. emph. str4}.
	
	self assert: expectedOutput equals: output