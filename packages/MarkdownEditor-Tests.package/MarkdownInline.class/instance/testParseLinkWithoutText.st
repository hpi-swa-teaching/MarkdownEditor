tests - links
testParseLinkWithoutText
	
	| expectedOutput link output |
	output := parser parseInlineElementsFrom: '[](hpi.de)'.
	link := MarkdownLink2 newFrom: 'hpi.de'.
	link children add: (MarkdownString2 newFrom: '').
	expectedOutput := OrderedCollection newFrom: {link}.
	self assert: expectedOutput equals: output