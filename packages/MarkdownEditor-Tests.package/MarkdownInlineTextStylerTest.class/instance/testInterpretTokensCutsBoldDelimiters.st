tests - interpretation
testInterpretTokensCutsBoldDelimiters

	| expectedEmphases |
	inlineTextStyler 
		tokenize: '***f**';
		interpretTokens.
	
	self assert: 4 equals: inlineTextStyler tokens size.
	
	expectedEmphases := {MarkdownEmphasis strongFrom: 2 to: 6}.
	self assert: expectedEmphases areEmphasesIn: inlineTextStyler attributes