tests - tokenization
testOpenCloserAndCloserLengthNoneDivisibleBy3
	
	| closer |
	inlineParser 
		text: 'foo****bar**' asText;
		tokenize.
	closer := inlineParser tokens eighth.
	
	inlineParser findOpenerFor: closer 
		ifFound: [:foundOpener | self fail]