tests - interpretation
testInterpretTokensCutsItalicDelimiters

	inlineTextStyler 
		tokenize: '**f*';
		interpretTokens.
	
	self assert: 1 equals: inlineTextStyler attributes size.
	self assert: 4 equals: inlineTextStyler tokens size.
	
	self assert: (inlineTextStyler attributes first isKindOf: MarkdownAttributeItalic).
	self assert: 2 equals: inlineTextStyler attributes first startPosition.
	self assert: 4 equals: inlineTextStyler attributes first endPosition