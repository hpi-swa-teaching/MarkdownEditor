tests - links
testParseLinkWithLineBreak
	
	| expectedOutput |
	parser parseInlineElementsFrom: ('[](hpi',Character cr,'.de)').
	expectedOutput := OrderedCollection newFrom: {MarkdownString2 newFrom: '[](hpi',String cr,'.de)'}.
	self assert: expectedOutput equals: parser inlineContainer