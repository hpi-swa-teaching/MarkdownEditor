tests - interpretation
testInterpretTokensBold

	inlineTextStyler 
		tokenize: '**foo**';
		interpretTokens.

	self 
		assert: {MarkdownBold from: 1 to: 7}
		areInlineElementsIn: inlineTextStyler inlineElements