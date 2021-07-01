tests - links
testParseLinkWithEmphasis2
	
	| expectedOutput link str output |
	output := parser parseInline: '*[this is a test*](hpi.de)'.
	
	link := MarkdownLink2 newFrom: 'hpi.de'.
	link children add: (MarkdownString2 newFrom: 'this is a test*').
	str := (MarkdownString2 newFrom: '*').
	expectedOutput := MarkdownLinkedList newFrom: 
		{str. link}.
	
	self assert: expectedOutput equals: output