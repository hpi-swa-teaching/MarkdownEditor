tests - tokenization
testDontFindOpenerForCloserIfBothLengthsIndivisibleBy3
	
	| closer |
	inlineParser tokenize: 'foo****bar**'.
	closer := inlineParser tokens eighth.
	
	inlineParser findOpenerFor: closer 
		ifFound: [:foundOpener | self fail]