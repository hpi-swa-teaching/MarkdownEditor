tests - links
testParseLinkWithEmphasis
	
	| expectedOutput link boldLabel output |
	output := parser parse: 'start of test [**hello world**](hpi.de) end of test'.
	
	boldLabel := MarkdownBold2 new. 
	boldLabel children add: (MarkdownString2 newFrom: 'hello world').
	link := MarkdownLink2 newFrom: 'hpi.de'.
	link children add: boldLabel.
	expectedOutput := LinkedList newFrom: 
		{(MarkdownString2 newFrom: 'start of test '). link. (MarkdownString2 newFrom: ' end of test')}.
	self assert: expectedOutput equals: output