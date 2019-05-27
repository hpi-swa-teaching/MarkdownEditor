tests - interpretation
testInterpretTokensCutsBoldDelimiters

	inlineParser 
		text: '***f**' asText;
		tokenize;
		interpretTokens.
	
	self assert: 1 equals: inlineParser attributes size.
	self assert: (inlineParser attributes first isKindOf: MarkdownAttributeBold).
	self assert: 2 equals: inlineParser attributes first startPosition.
	self assert: 6 equals: inlineParser attributes first endPosition.
	self assert: 4 equals: inlineParser tokens size