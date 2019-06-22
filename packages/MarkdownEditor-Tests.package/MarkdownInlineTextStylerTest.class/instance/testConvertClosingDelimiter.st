tests - interpretation
testConvertClosingDelimiter

	| closer convertedCloser |
	closer := MarkdownEmphasisDelimiter new content: '**'; startPosition: 1; yourself.

	inlineTextStyler tokens addLast: closer.
	convertedCloser := inlineTextStyler cutCloser: closer to: 2.
	
	self assert: convertedCloser equals: inlineTextStyler tokens first.
	
	self assert: 1 equals: inlineTextStyler tokens size.
	self assert: (inlineTextStyler tokens first isKindOf: MarkdownString).
	self assert: 2 equals: inlineTextStyler tokens first content size