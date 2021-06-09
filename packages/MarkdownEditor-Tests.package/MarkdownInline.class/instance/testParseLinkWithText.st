tests - links
testParseLinkWithText
	
	| expectedOutput link |
	parser parseInlineElementsFrom: 'start of test [hello world](hpi.de) end of test'.
	link := MarkdownLink2 newFrom: 'hpi.de'.
	link children add: (MarkdownString2 newFrom: 'hello world').
	expectedOutput := OrderedCollection newFrom: 
		{(MarkdownString2 newFrom: 'start of test '). link. (MarkdownString2 newFrom: ' end of test')}.
	self assert: expectedOutput equals: parser inlineContainer