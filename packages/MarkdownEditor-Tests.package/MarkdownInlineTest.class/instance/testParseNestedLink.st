tests - links
testParseNestedLink
	
	| expectedOutput link output str str2 |
	output := parser parseInline: '[[this is a link](hpi.de) and this is text](hpi.de)'.
	str := MarkdownString newFrom: '['.
	link := MarkdownLink newFrom: 'hpi.de'.
	link children add: (MarkdownString newFrom: 'this is a link').
	str2 := MarkdownString newFrom: ' and this is text](hpi.de)'.
	expectedOutput := MarkdownLinkedList newFrom: {str. link. str2}.
	
	self assert: expectedOutput equals: output