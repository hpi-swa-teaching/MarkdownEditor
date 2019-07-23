tests - interpretation
testInterpretTokensCutDelimiterClosesTwice

	| expectedEmphases |
	inlineTextStyler 
		tokenize: '*a**b***';
		interpretTokens.
		
	self assert: 6 equals: inlineTextStyler tokens size.
	
	expectedEmphases := {MarkdownEmphasis from: 1 to: 8. 
		MarkdownEmphasis strongFrom: 3 to: 7}.
	self assert: expectedEmphases areEmphasesIn: inlineTextStyler attributes