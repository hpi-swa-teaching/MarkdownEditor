tests - interpretation
testInterpretTokensCutsBoldDelimiters

	inlineParser parse: '***f**'.
	
	self assert: 1 equals: inlineParser attributes size.
	self assert: 4 equals: inlineParser tokens size.
	
	self assert: (inlineParser attributes first isKindOf: MarkdownAttributeBold).
	self assert: 2 equals: inlineParser attributes first startPosition.
	self assert: 6 equals: inlineParser attributes first endPosition