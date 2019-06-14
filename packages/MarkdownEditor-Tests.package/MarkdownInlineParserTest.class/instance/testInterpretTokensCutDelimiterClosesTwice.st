tests - interpretation
testInterpretTokensCutDelimiterClosesTwice

	inlineParser 
		textToParse: '*a**b***' asText;
		tokenize;
		interpretTokens.
	
	self assert: 2 equals: inlineParser attributes size.
	self assert: 6 equals: inlineParser tokens size.
	
	self assert: (inlineParser attributes first isKindOf: MarkdownAttributeBold).
	self assert: 3 equals: inlineParser attributes first startPosition.
	self assert: 7 equals: inlineParser attributes first endPosition.
	
	self assert: (inlineParser attributes second isKindOf: MarkdownAttributeItalic).
	self assert: 1 equals: inlineParser attributes second startPosition.
	self assert: 8 equals: inlineParser attributes second endPosition