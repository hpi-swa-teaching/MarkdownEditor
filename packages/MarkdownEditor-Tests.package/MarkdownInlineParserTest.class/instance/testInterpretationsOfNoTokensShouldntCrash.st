tests - interpretation
testInterpretationsOfNoTokensShouldntCrash

	inlineParser tokens: OrderedCollection new.
	
	self shouldnt: [inlineParser interpretTokens] raise: Error.
	self assert: 0 equals: inlineParser attributes size.
	