tests - links
testParseLinkWithText
	
	| expectedOutput link output |
	output := parser parseInline: 'start of test [hello world](hpi.de) end of test' with: 1.
	
	link := MarkdownLink newFrom: 'hpi.de'.
	link startPosition: 15.
	link children add: (MarkdownString newFrom: 'hello world' startingAt: 16).
	expectedOutput := MarkdownLinkedList newFrom: 
		{(MarkdownString newFrom: 'start of test ' startingAt: 1). 
			link. 
			(MarkdownString newFrom: ' end of test' startingAt: 36)}.
	
	self assert: expectedOutput equals: output