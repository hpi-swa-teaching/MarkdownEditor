tests - state
testInitializationRightFlanking

	| delimiter stream |
	stream := self readStreamOn: 'Thank*** you for travelling with ILT.' at: 5.
	delimiter := MarkdownEmphasisDelimiter newFor: stream.
	
	self assert: '***' equals: delimiter content.	
	self assert: delimiter isRightFlanking.
	self deny: delimiter isLeftFlanking