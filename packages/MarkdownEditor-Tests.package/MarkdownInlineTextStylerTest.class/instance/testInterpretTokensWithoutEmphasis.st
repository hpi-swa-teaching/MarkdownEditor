tests - interpretation
testInterpretTokensWithoutEmphasis

	inlineTextStyler 
		tokenize: 'foo';
		interpretTokens.
	
	self assert: inlineTextStyler inlineElements isEmpty