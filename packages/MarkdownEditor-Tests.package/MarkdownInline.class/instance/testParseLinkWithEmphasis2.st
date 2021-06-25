tests - links
testParseLinkWithEmphasis2
	
	| expectedOutput link output |
	output := parser parse: '*[this is a test*](hpi.de)'.
	
	link := MarkdownLink2 newFrom: 'hpi.de'.
	link children add: (MarkdownString2 newFrom: 'this is a test*').
	expectedOutput := MarkdownLinkedList newFrom: 
		{(MarkdownString2 newFrom: '*'). link}.
	
	self assert: expectedOutput equals: output