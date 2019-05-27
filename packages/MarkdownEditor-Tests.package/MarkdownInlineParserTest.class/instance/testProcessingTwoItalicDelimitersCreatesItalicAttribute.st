tests - interpretation
testProcessingTwoItalicDelimitersCreatesItalicAttribute

	inlineParser
		text: '*a*' asText;
		tokenize;
		process: inlineParser tokens first and: inlineParser tokens last.
	
	self assert: 1 equals: inlineParser attributes size.
	
	self assert: (inlineParser attributes first isKindOf: MarkdownAttributeItalic).
	self assert: 1 equals: inlineParser attributes first startPosition.
	self assert: 3 equals: inlineParser attributes first endPosition