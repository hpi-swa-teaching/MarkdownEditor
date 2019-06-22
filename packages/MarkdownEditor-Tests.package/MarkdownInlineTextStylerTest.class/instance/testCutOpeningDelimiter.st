tests - interpretation
testCutOpeningDelimiter

	| opener |
	opener := MarkdownEmphasisDelimiter new content: '***'; startPosition: 1; yourself.

	inlineTextStyler tokens addLast: opener.
	inlineTextStyler cutOpener: opener to: 2.
	
	self assert: 2 equals: inlineTextStyler tokens size.
	
	self assert: (inlineTextStyler tokens first isKindOf: MarkdownEmphasisDelimiter).
	self assert: 1 equals: inlineTextStyler tokens first content size.
	
	self assert: (inlineTextStyler tokens second isKindOf: MarkdownString).
	self assert: 2 equals: inlineTextStyler tokens second content size