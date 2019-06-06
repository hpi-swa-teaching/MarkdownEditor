tests - interpretation
testInterpretTokensWithoutEmphasis

	inlineParser 
		text: 'foo' asText;
		tokenize;
		interpretTokens.
	
	self assert: inlineParser attributes isEmpty