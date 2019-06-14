tests - interpretation
testInterpretTokensWithoutEmphasis

	inlineParser 
		textToParse: 'foo' asText;
		tokenize;
		interpretTokens.
	
	self assert: inlineParser attributes isEmpty