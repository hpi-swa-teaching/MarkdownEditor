tests - state
testInitializationLeftRightFlanking

	|delimiter|
	delimiter := MarkdownEmphasisDelimiter newFor: (self readStreamOn: '***').
	self assert: '***' equals: delimiter content.
	self deny: delimiter isLeftFlanking.
	self deny: delimiter isRightFlanking