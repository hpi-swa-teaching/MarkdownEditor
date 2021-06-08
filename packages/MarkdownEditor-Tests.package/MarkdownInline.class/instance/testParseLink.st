as yet unclassified
testParseLink
	
	| output expectedOutput link |
	output := parser parseInlineElementsFrom: '[hello](www.hpi.de)'.
	link := MarkdownLink2 new.
	link description: 'hello'; url: 'www.hpi.de'.
	expectedOutput := OrderedCollection newFrom: {link beClosed}.
	self assert: expectedOutput equals: output