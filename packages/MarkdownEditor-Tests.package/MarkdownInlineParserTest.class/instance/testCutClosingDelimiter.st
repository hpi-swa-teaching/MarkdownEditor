tests - interpretation
testCutClosingDelimiter

	| closer cutCloser |
	closer := MarkdownEmphasisDelimiter new content: '***'; startPosition: 1; yourself.

	inlineParser tokens addLast: closer.
	cutCloser := inlineParser cutCloser: closer to: 2.
	
	self assert: cutCloser equals: inlineParser tokens first.
	
	self assert: 2 equals: inlineParser tokens size.
	self assert: (inlineParser tokens first isKindOf: MarkdownString).
	self assert: 2 equals: inlineParser tokens first content size.
	self assert: (inlineParser tokens second isKindOf: MarkdownEmphasisDelimiter).
	self assert: 1 equals: inlineParser tokens second content size