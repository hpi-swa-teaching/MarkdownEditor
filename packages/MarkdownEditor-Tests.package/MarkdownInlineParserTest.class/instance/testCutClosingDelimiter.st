tests - interpretation
testCutClosingDelimiter

	| opener closer cutCloser |
	opener := MarkdownDelimiterEmphasis new content: '**'; startPosition: 1; yourself.
	closer := MarkdownDelimiterEmphasis new content: '***'; startPosition: 3; yourself.

	inlineParser tokens: OrderedCollection new.
	inlineParser tokens addLast: opener.
	inlineParser tokens addLast: closer.
	cutCloser := inlineParser cutCloser: closer to: 2.
	
	self assert: cutCloser equals: inlineParser tokens second.
	
	self assert: 3 equals: inlineParser tokens size.
	self assert: (inlineParser tokens second isKindOf: MarkdownString).
	self assert: 2 equals: inlineParser tokens second content size.
	self assert: (inlineParser tokens third isKindOf: MarkdownDelimiterEmphasis).
	self assert: 1 equals: inlineParser tokens third content size