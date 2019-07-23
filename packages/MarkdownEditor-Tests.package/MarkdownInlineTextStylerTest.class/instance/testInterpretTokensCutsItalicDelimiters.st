tests - interpretation
testInterpretTokensCutsItalicDelimiters

	| expectedEmphases |
	inlineTextStyler 
		tokenize: '**f*';
		interpretTokens.
	
	self assert: 4 equals: inlineTextStyler tokens size.
	
	expectedEmphases := {MarkdownEmphasis from: 2 to: 4}.
	self assert: expectedEmphases areEmphasesIn: inlineTextStyler attributes