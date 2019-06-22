tests - interpretation
testProcessingTwoItalicDelimitersCreatesItalicAttribute

	inlineTextStyler
		tokenize: '*a*';
		process: inlineTextStyler tokens first and: inlineTextStyler tokens last.
	
	self assert: 1 equals: inlineTextStyler attributes size.
	
	self assert: (inlineTextStyler attributes first isKindOf: MarkdownAttributeItalic).
	self assert: 1 equals: inlineTextStyler attributes first startPosition.
	self assert: 3 equals: inlineTextStyler attributes first endPosition