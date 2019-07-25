tests - interpretation
testInterpretTokensWithoutEmphasis

	inlineTextStyler 
		tokenize: 'foo';
		interpretTokens.
	
	self assert: inlineTextStyler emphases isEmpty