tests - links
testParseLinkWithinLink
	
	| expectedOutput link output string1 string2 |
	output := parser parse: '[[this is a link](hpi.de) and this is text](hpi.de)'.
	string1 := MarkdownString2 newFrom: '['.
	link := MarkdownLink2 newFrom: 'hpi.de'.
	link children add: (MarkdownString2 newFrom: 'this is a link').
	string2 := MarkdownString2 newFrom: ' and this is text](hpi.de)'.
	expectedOutput := LinkedList newFrom: {string1. link. string2}.
	self assert: expectedOutput equals: output