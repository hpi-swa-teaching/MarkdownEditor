tests - tokenization
testOpenCloserAndCloserLenghtBothDivisibleBy3
	
	| closer openCloser |
	inlineParser 
		text: 'foo***bar******' asText;
		tokenize.
	openCloser := inlineParser tokens fourth.
	closer := inlineParser tokens eighth.
	
	inlineParser findOpenerFor: closer 
		ifFound: [:foundOpener | ^ self assert: openCloser equals: foundOpener].
	self fail