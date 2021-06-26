tests - links
testParseLinkWithEmphasis
	
	| expectedOutput link boldLabel str str2 output |
	output := parser parse: 'start of test [**hello world**](hpi.de) end of test'.
	boldLabel := MarkdownBold2 new. 
	boldLabel children add: (MarkdownString2 newFrom: 'hello world').
	link := MarkdownLink2 newFrom: 'hpi.de'.
	link children add: boldLabel.
	str := (MarkdownString2 newFrom: 'start of test ').
	str2 := (MarkdownString2 newFrom: ' end of test').
	expectedOutput := MarkdownLinkedList newFrom: {str. link. str2}.
	
	self assert: expectedOutput equals: output