tests - links
testParseLinkWithOutUrlAndDescription
	
	| expectedOutput link output |
	output := parser parse: '[]()'.
	link := MarkdownLink2 newFrom: ''.
	link children add: (MarkdownString2 newFrom: '').
	expectedOutput := LinkedList newFrom: {link}.
	self assert: expectedOutput equals: output