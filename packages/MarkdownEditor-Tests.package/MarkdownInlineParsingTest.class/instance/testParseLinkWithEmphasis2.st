tests - links
testParseLinkWithEmphasis2
	
	| expectedOutput link str output |
	output := parser parseInline: '*[this is a test*](hpi.de)'.
	
	link := MarkdownLink newFrom: 'hpi.de'.
	link children add: (MarkdownString newFrom: 'this is a test*').
	str := (MarkdownString newFrom: '*').
	expectedOutput := MarkdownLinkedList newFrom: 
		{str. link}.
	
	self assert: expectedOutput equals: output