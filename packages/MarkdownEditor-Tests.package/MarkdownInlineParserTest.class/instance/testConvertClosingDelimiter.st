tests - interpretation
testConvertClosingDelimiter

	| closer convertedCloser |
	closer := MarkdownEmphasisDelimiter new content: '**'; startPosition: 1; yourself.

	inlineParser tokens addLast: closer.
	convertedCloser := inlineParser cutCloser: closer to: 2.
	
	self assert: convertedCloser equals: inlineParser tokens first.
	
	self assert: 1 equals: inlineParser tokens size.
	self assert: (inlineParser tokens first isKindOf: MarkdownString).
	self assert: 2 equals: inlineParser tokens first content size