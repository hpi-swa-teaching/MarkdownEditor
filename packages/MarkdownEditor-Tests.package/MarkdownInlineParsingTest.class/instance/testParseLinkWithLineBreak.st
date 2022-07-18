tests - links
testParseLinkWithLineBreak
	
	| expectedOutput output |
	output := parser parseInline: '[](hpi', Character cr, '.de)' with: 1.
	expectedOutput := MarkdownLinkedList newFrom: 
		{MarkdownString newFrom: '[](hpi', Character cr, '.de)' startingAt: 1}.
	
	self assert: expectedOutput equals: output