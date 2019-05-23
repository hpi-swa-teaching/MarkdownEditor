tests - interpretation
testConvertOpeningDelimiter

	| opener |
	opener := MarkdownEmphasisDelimiter new content: '**'; startPosition: 1; yourself.

	inlineParser tokens addLast: opener.
	inlineParser cutOpener: opener to: 2.
	
	self assert: 1 equals: inlineParser tokens size.
	self assert: (inlineParser tokens first isKindOf: MarkdownString).
	self assert: 2 equals: inlineParser tokens first content size