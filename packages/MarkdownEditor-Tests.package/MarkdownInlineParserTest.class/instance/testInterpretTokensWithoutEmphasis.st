tests - interpretation
testInterpretTokensWithoutEmphasis

	inlineParser text: 'foo' asText.
	inlineParser tokenize.
	inlineParser interpretTokens.
	
	self assert: inlineParser attributes isEmpty