tests - interpretation
testInterpretTokensWithoutEmphasis

	inlineParser parse: 'foo'.
	
	self assert: inlineParser attributes isEmpty