tests - links
testParseLinkWithEmphasis
	
	| expectedOutput link boldLabel str str2 output |
	output := parser parseInline: 'start of test [**hello world**](hpi.de) end of test'.
	boldLabel := MarkdownBold new. 
	boldLabel children add: (MarkdownString newFrom: 'hello world').
	link := MarkdownLink newFrom: 'hpi.de'.
	link children add: boldLabel.
	str := (MarkdownString newFrom: 'start of test ').
	str2 := (MarkdownString newFrom: ' end of test').
	expectedOutput := MarkdownLinkedList newFrom: {str. link. str2}.
	
	self assert: expectedOutput equals: output