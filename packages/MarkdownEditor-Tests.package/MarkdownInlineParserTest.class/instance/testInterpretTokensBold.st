tests - interpretation
testInterpretTokensBold

	inlineParser 
		text: '**foo**' asText;
		tokenize;
		interpretTokens.
	
	self assert: 1 equals: inlineParser attributes size.
	self assert: (inlineParser attributes first isKindOf: MarkdownAttributeBold).
	self assert: 1 equals: inlineParser attributes first startPosition.
	self assert: 7 equals: inlineParser attributes first endPosition