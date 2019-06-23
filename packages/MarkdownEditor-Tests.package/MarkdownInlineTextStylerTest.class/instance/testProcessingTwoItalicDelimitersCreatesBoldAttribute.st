tests - interpretation
testProcessingTwoItalicDelimitersCreatesBoldAttribute

	inlineTextStyler
		tokenize: '**a**';
		process: inlineTextStyler tokens first and: inlineTextStyler tokens last.
	
	self assert: 1 equals: inlineTextStyler attributes size.
	
	self assert: (inlineTextStyler attributes first isKindOf: MarkdownAttributeBold).
	self assert: 1 equals: inlineTextStyler attributes first startPosition.
	self assert: 5 equals: inlineTextStyler attributes first endPosition