tests - interpretation
testInterpretTokensCutDelimiterClosesTwice

	inlineTextStyler 
		tokenize: '*a**b***';
		interpretTokens.
	
	self assert: 2 equals: inlineTextStyler attributes size.
	self assert: 6 equals: inlineTextStyler tokens size.
	
	self assert: (inlineTextStyler attributes first isKindOf: MarkdownAttributeBold).
	self assert: 3 equals: inlineTextStyler attributes first startPosition.
	self assert: 7 equals: inlineTextStyler attributes first endPosition.
	
	self assert: (inlineTextStyler attributes second isKindOf: MarkdownAttributeItalic).
	self assert: 1 equals: inlineTextStyler attributes second startPosition.
	self assert: 8 equals: inlineTextStyler attributes second endPosition