tests - links
testParseLink
	
	| output expectedOutput link |
	output := parser parseInlineElementsFrom: '[hello](www.hpi.de)'.
	link := MarkdownLink2 new.
	link url: 'www.hpi.de'.
	link children add: (MarkdownString2 newFrom: 'hello').
	expectedOutput := OrderedCollection newFrom: {link}.
	self assert: expectedOutput equals: output