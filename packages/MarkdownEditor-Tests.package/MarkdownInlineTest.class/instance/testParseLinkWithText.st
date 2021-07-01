tests - links
testParseLinkWithText
	
	| expectedOutput link output |
	output := parser parseInline: 'start of test [hello world](hpi.de) end of test'.
	
	link := MarkdownLink2 newFrom: 'hpi.de'.
	link children add: (MarkdownString2 newFrom: 'hello world').
	expectedOutput := MarkdownLinkedList newFrom: 
		{(MarkdownString2 newFrom: 'start of test '). link. (MarkdownString2 newFrom: ' end of test')}.
	
	self assert: expectedOutput equals: output