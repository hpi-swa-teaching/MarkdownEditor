tests - tokenization
testFindOpenerForCloserIfBothLengthsDivisibleBy3
	
	| closer openCloser |
	inlineParser tokenize: 'foo***bar******'.
	openCloser := inlineParser tokens fourth.
	closer := inlineParser tokens eighth.
	
	inlineParser findOpenerFor: closer 
		ifFound: [:foundOpener | ^ self assert: openCloser equals: foundOpener].
	self fail