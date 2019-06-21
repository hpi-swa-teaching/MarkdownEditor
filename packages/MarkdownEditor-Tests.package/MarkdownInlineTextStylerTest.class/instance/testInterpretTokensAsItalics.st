tests - interpretation
testInterpretTokensAsItalics

	inlineParser parse: '*foo*'.
	
	self assert: 1 equals: inlineParser attributes size.
	self assert: (inlineParser attributes first isKindOf: MarkdownAttributeItalic).
	self assert: 1 equals: inlineParser attributes first startPosition.
	self assert: 5 equals: inlineParser attributes first endPosition