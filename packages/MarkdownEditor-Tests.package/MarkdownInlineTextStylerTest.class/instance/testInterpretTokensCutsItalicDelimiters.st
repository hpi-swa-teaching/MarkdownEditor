tests - interpretation
testInterpretTokensCutsItalicDelimiters

	inlineTextStyler 
		tokenize: '**f*';
		interpretTokens.
	
	self assert: 4 equals: inlineTextStyler tokens size.
	
	self 
		assert: {MarkdownEmphasis from: 2 to: 4}
		areEmphasesIn: inlineTextStyler attributes