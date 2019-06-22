tests - tokenization
testDontFindOpenerForCloserIfBothLengthsIndivisibleBy3
	
	| closer |
	inlineTextStyler tokenize: 'foo****bar**'.
	closer := inlineTextStyler tokens eighth.
	
	inlineTextStyler findOpenerFor: closer 
		ifFound: [:foundOpener | self fail]