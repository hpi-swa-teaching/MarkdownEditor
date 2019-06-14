tests - tokenization
testFindOpenerForCloserIfBothLengthsDivisibleBy3
	
	| closer openCloser |
	inlineParser 
		textToParse: 'foo***bar******' asText;
		tokenize.
	openCloser := inlineParser tokens fourth.
	closer := inlineParser tokens eighth.
	
	inlineParser findOpenerFor: closer 
		ifFound: [:foundOpener | ^ self assert: openCloser equals: foundOpener].
	self fail