tests - interpretation
testInterpretTokensBold

	inlineTextStyler 
		tokenize: '**foo**';
		interpretTokens.

	self assert: 1 equals: inlineTextStyler attributes size.
	self assert: (inlineTextStyler attributes first isKindOf: MarkdownAttributeBold).
	self assert: 1 equals: inlineTextStyler attributes first startPosition.
	self assert: 7 equals: inlineTextStyler attributes first endPosition