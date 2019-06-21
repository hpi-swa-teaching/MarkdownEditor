tests - interpretation
testInterpretEmptyTokens
	
	inlineParser interpretTokens.
	self assert: 0 equals: inlineParser attributes size