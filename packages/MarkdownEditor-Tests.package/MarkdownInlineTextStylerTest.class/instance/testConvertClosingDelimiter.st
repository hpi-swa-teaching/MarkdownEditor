tests - interpretation
testConvertClosingDelimiter

	| closer convertedCloser |
	closer := MarkdownEmphasisDelimiter newFor: '**' at: 1.

	inlineTextStyler tokens addLast: closer.
	convertedCloser := inlineTextStyler cutCloser: closer to: 2.
	
	self assert: convertedCloser equals: inlineTextStyler tokens first.
	
	self assert: 1 equals: inlineTextStyler tokens size.
	self assert: (inlineTextStyler tokens first isKindOf: MarkdownString).
	self assert: 2 equals: inlineTextStyler tokens first content size