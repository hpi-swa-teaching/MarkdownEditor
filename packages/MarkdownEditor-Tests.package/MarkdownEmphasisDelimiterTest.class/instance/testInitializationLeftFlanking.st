tests - state
testInitializationLeftFlanking

	| delimiter |
	delimiter := MarkdownEmphasisDelimiter newFor: (self readStreamOn: '***Thank you for travelling with ILT.').
	
	self assert: '***' equals: delimiter content.	
	self assert: delimiter isLeftFlanking.
	self deny: delimiter isRightFlanking
	