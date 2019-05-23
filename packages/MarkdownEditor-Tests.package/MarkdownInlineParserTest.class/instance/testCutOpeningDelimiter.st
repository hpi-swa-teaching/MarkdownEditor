tests - interpretation
testCutOpeningDelimiter

	| opener |
	opener := MarkdownEmphasisDelimiter new content: '***'; startPosition: 1; yourself.

	inlineParser tokens addLast: opener.
	inlineParser cutOpener: opener to: 2.
	
	self assert: 2 equals: inlineParser tokens size.
	self assert: (inlineParser tokens first isKindOf: MarkdownEmphasisDelimiter).
	self assert: 1 equals: inlineParser tokens first content size.
	self assert: (inlineParser tokens second isKindOf: MarkdownString).
	self assert: 2 equals: inlineParser tokens second content size