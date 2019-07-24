tests - interpretation
testInterpretTokensAsItalics

	inlineTextStyler 
		tokenize: '*foo*';
		interpretTokens.
	
	self 
		assert: {MarkdownEmphasis from: 1 to: 5}
		areEmphasesIn: inlineTextStyler attributes
	