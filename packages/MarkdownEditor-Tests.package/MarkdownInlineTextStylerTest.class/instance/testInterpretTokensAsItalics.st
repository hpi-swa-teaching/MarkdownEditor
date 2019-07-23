tests - interpretation
testInterpretTokensAsItalics

	| expectedEmphases |
	inlineTextStyler 
		tokenize: '*foo*';
		interpretTokens.
	
	expectedEmphases := {MarkdownEmphasis from: 1 to: 5}.
	self assert: expectedEmphases areEmphasesIn: inlineTextStyler attributes
	