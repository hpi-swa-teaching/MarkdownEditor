tests - emphasis
testBuildDelimiterStack
	
	| expectedOutput |
	parser delimiters: OrderedCollection new.
	parser firstPhaseProcessInlineFrom: '** * **'.
	expectedOutput := OrderedCollection newFrom: {MarkdownDelimiter newFrom: '**' with: 1. 
		MarkdownDelimiter newFrom: '*' with: 3.
		MarkdownDelimiter newFrom: '**' with: 5}.
	self assert: expectedOutput equals: parser delimiters.