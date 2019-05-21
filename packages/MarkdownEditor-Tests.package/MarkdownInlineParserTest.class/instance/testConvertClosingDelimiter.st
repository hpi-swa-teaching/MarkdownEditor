tests - interpretation
testConvertClosingDelimiter

	| opener closer convertedCloser |
	opener := MarkdownDelimiterEmphasis new content: '**'; startPosition: 1; yourself.
	closer := MarkdownDelimiterEmphasis new content: '**'; startPosition: 3; yourself.

	inlineParser tokens: OrderedCollection new.
	inlineParser tokens addLast: opener.
	inlineParser tokens addLast: closer.
	convertedCloser := inlineParser cutCloser: closer to: 2.
	
	self assert: convertedCloser equals: inlineParser tokens second.
	
	self assert: 2 equals: inlineParser tokens size.
	self assert: (inlineParser tokens second isKindOf: MarkdownString).
	self assert: 2 equals: inlineParser tokens second content size.
	
	