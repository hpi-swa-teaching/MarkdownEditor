tests - interpretation
testProcessingTwoItalicDelimitersCreatesItalicAttribute

	| opener closer |
	opener := MarkdownEmphasisDelimiter new content: '*'; isLeftFlanking: true; isRightFlanking: false; startPosition: 1; yourself.
	closer := MarkdownEmphasisDelimiter new content: '*'; isLeftFlanking: false; isRightFlanking: true; startPosition: 3; yourself.
	inlineParser tokens: {opener. MarkdownString new content: 'f'; yourself. closer} asOrderedCollection.
	inlineParser process: opener and: closer.
	
	self assert: (inlineParser attributes first isKindOf: MarkdownAttributeItalic).
	self assert: 1 equals: inlineParser attributes first startPosition.
	self assert: 3 equals: inlineParser attributes first endPosition.
	self assert: 1 equals: inlineParser attributes size