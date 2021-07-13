tests - links
testParseLinkWithText
	
	| expectedOutput link output |
	output := parser parseInline: 'start of test [hello world](hpi.de) end of test'.
	
	link := MarkdownLink newFrom: 'hpi.de'.
	link children add: (MarkdownString newFrom: 'hello world').
	expectedOutput := MarkdownLinkedList newFrom: 
		{(MarkdownString newFrom: 'start of test '). link. (MarkdownString newFrom: ' end of test')}.
	
	self assert: expectedOutput equals: output