tests - interpretation
testInterpretTokensAsItalics

	inlineParser text: '*foo*' asText.
	inlineParser tokenize.
	inlineParser interpretTokens.
	
	self assert: 1 equals: inlineParser attributes size.
	self assert: (inlineParser attributes first isKindOf: MarkdownAttributeItalic).
	self assert: 1 equals: inlineParser attributes first startPosition.
	self assert: 5 equals: inlineParser attributes first endPosition