tests - interpretation
testInterpretTokensCutsItalicDelimiters

	inlineParser text: '**f*' asText.
	inlineParser tokenize.
	inlineParser interpretTokens.
	
	self assert: 1 equals: inlineParser attributes size.
	self assert: (inlineParser attributes first isKindOf: MarkdownAttributeItalic).
	self assert: 2 equals: inlineParser attributes first startPosition.
	self assert: 4 equals: inlineParser attributes first endPosition.
	self assert: 4 equals: inlineParser tokens size