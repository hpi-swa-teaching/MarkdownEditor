tests - tokenization
testFindOpenerForCloserIfOnlyOneLengthIsDivisibleBy3
	
	| closer openCloser |
	inlineTextStyler tokenize: 'foo***bar**'.
	openCloser := inlineTextStyler tokens second.
	closer := inlineTextStyler tokens fourth.

	inlineTextStyler findOpenerFor: closer 
		ifFound: [:foundOpener | ^ self assert: openCloser equals: foundOpener].
	self fail