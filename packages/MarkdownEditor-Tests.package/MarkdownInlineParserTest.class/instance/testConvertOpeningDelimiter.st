tests - interpretation
testConvertOpeningDelimiter

	| opener closer |
	opener := MarkdownDelimiterEmphasis new content: '**'; startPosition: 1; yourself.
	closer := MarkdownDelimiterEmphasis new content: '**'; startPosition: 3; yourself.

	inlineParser tokens: OrderedCollection new.
	inlineParser tokens addLast: opener.
	inlineParser tokens addLast: closer.
	inlineParser cutOpener: opener to: 2.
	
	self assert: 2 equals: inlineParser tokens size.
	self assert: (inlineParser tokens first isKindOf: MarkdownString).
	self assert: 2 equals: inlineParser tokens first content size