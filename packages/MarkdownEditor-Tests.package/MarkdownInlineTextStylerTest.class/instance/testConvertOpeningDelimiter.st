tests - interpretation
testConvertOpeningDelimiter

	| opener |
	opener := MarkdownEmphasisDelimiter new content: '**'; startPosition: 1; yourself.

	inlineTextStyler tokens addLast: opener.
	inlineTextStyler cutOpener: opener to: 2.
	
	self assert: 1 equals: inlineTextStyler tokens size.
	self assert: (inlineTextStyler tokens first isKindOf: MarkdownString).
	self assert: 2 equals: inlineTextStyler tokens first content size