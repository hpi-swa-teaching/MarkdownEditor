tests - tokenization
testFindOpenerForCloserIfOnlyOneLengthIsDivisibleBy3
	
	| closer openCloser |
	inlineTextStyler tokenize: 'foo***bar**'.
	openCloser := inlineTextStyler tokens fourth.
	closer := inlineTextStyler tokens eighth.

	inlineTextStyler findOpenerFor: closer 
		ifFound: [:foundOpener | ^ self assert: openCloser equals: foundOpener].
	self fail