tests - interpretation
testInterpretTokensBold

	inlineTextStyler 
		tokenize: '**foo**';
		interpretTokens.

	self 
		assert: {MarkdownEmphasis strongFrom: 1 to: 7}
		areEmphasesIn: inlineTextStyler attributes