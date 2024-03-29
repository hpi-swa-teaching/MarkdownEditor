tests - links
testParseLinkWithEmphasis
	
	| expectedOutput link boldLabel str str2 output |
	output := parser parseInline: 'start of test [**hello world**](hpi.de) end of test' with: 1.
	boldLabel := MarkdownBold new
		startPosition: 16. 
	boldLabel children add: (MarkdownString newFrom: 'hello world' startingAt: 18).
	link := MarkdownLink newFrom: 'hpi.de'.
	link children add: boldLabel.
	link startPosition: 15.
	str := (MarkdownString newFrom: 'start of test ' startingAt: 1).
	str2 := (MarkdownString newFrom: ' end of test' startingAt: 40).
	expectedOutput := MarkdownLinkedList newFrom: {str. link. str2}.
	
	self assert: expectedOutput equals: output