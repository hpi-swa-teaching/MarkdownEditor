tests - links
testParseNestedLink
	
	| expectedOutput link output str str2 |
	output := parser parseInline: '[[this is a link](hpi.de) and this is text](hpi.de)'.
	str := MarkdownString2 newFrom: '['.
	link := MarkdownLink2 newFrom: 'hpi.de'.
	link children add: (MarkdownString2 newFrom: 'this is a link').
	str2 := MarkdownString2 newFrom: ' and this is text](hpi.de)'.
	expectedOutput := MarkdownLinkedList newFrom: {str. link. str2}.
	
	self assert: expectedOutput equals: output