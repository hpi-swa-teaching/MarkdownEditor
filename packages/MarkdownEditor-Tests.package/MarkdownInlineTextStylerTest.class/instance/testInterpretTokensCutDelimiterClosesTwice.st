tests - interpretation
testInterpretTokensCutDelimiterClosesTwice

	inlineTextStyler 
		tokenize: '*a**b***';
		interpretTokens.
		
	self assert: 6 equals: inlineTextStyler tokens size.
	
	self 
		assert: {MarkdownEmphasis from: 1 to: 8. MarkdownEmphasis strongFrom: 3 to: 7}
		areEmphasesIn: inlineTextStyler attributes