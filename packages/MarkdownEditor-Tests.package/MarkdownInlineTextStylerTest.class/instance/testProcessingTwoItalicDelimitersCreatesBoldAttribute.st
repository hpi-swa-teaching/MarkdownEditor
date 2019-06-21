tests - interpretation
testProcessingTwoItalicDelimitersCreatesBoldAttribute

	inlineParser
		tokenize: '**a**';
		process: inlineParser tokens first and: inlineParser tokens last.
	
	self assert: 1 equals: inlineParser attributes size.
	
	self assert: (inlineParser attributes first isKindOf: MarkdownAttributeBold).
	self assert: 1 equals: inlineParser attributes first startPosition.
	self assert: 5 equals: inlineParser attributes first endPosition