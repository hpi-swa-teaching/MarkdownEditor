tests - interpretation
testCutClosingDelimiter

	| closer cutCloser |
	closer := MarkdownEmphasisDelimiter newFor: '***' at: 1.

	inlineTextStyler tokens addLast: closer.
	cutCloser := inlineTextStyler cutCloser: closer to: 2.
	
	self assert: cutCloser equals: inlineTextStyler tokens first.
	self assert: 2 equals: inlineTextStyler tokens size.
	
	self assert: (inlineTextStyler tokens first isKindOf: MarkdownString).
	self assert: 2 equals: inlineTextStyler tokens first content size.
	
	self assert: (inlineTextStyler tokens second isKindOf: MarkdownEmphasisDelimiter).
	self assert: 1 equals: inlineTextStyler tokens second content size