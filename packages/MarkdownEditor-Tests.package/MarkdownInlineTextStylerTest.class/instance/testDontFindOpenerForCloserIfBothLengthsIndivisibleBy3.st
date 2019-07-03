tests - tokenization
testDontFindOpenerForCloserIfBothLengthsIndivisibleBy3
	
	| closer |
	inlineTextStyler tokenize: 'foo****bar**'.
	closer := inlineTextStyler tokens fourth.
	
	inlineTextStyler findOpenerFor: closer 
		ifFound: [:foundOpener | self fail]