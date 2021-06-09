tests - emphasis
testBuildDelimiterStackWithText
	
	| expectedOutput |
	parser delimiters: OrderedCollection new.
	parser firstPhaseProcessInlineFrom: '** hello world** ****'.
	expectedOutput := OrderedCollection newFrom: {MarkdownDelimiter newFrom: '**' with: 1. 
		MarkdownDelimiter newFrom: '**' with: 3.
		MarkdownDelimiter newFrom: '****' with: 5}.
	self assert: expectedOutput equals: parser delimiters.