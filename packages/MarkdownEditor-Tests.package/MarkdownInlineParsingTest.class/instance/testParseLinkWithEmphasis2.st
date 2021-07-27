tests - links
testParseLinkWithEmphasis2
	
	| expectedOutput link str output |
	output := parser parseInline: '*[this is a test*](hpi.de)'.
	
	link := MarkdownLink newFrom: 'hpi.de'.
	link startPosition: 2.
	link children add: (MarkdownString newFrom: 'this is a test*' startingAt: 3).
	str := (MarkdownString newFrom: '*' startingAt: 1).
	expectedOutput := MarkdownLinkedList newFrom: 
		{str. link}.
	
	self assert: expectedOutput equals: output