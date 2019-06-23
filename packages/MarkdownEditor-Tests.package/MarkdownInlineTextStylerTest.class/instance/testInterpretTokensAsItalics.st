tests - interpretation
testInterpretTokensAsItalics

	inlineTextStyler 
		tokenize: '*foo*';
		interpretTokens.
	
	self assert: 1 equals: inlineTextStyler attributes size.
	self assert: (inlineTextStyler attributes first isKindOf: MarkdownAttributeItalic).
	self assert: 1 equals: inlineTextStyler attributes first startPosition.
	self assert: 5 equals: inlineTextStyler attributes first endPosition