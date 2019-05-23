tests - interpretation
testInterpretTokensCutDelimiters1

	| tokens |
	tokens := OrderedCollection new.
	tokens add: (MarkdownEmphasisDelimiter new content: '**'; startPosition: 1; leftFlanking: true; rightFlanking: false; yourself).
	tokens add: (MarkdownString new content: 'f'; startPosition: 3; yourself).
	tokens add: (MarkdownEmphasisDelimiter new content: '*'; startPosition: 4; leftFlanking: false; rightFlanking: true; yourself).
	inlineParser tokens: tokens.
	inlineParser interpretTokens.
	self assert: 1 equals: inlineParser attributes size.
	self assert: (inlineParser attributes first isKindOf: MarkdownAttributeItalic).
	self assert: 2 equals: inlineParser attributes first startPosition.
	self assert: 4 equals: inlineParser attributes first endPosition.
	self assert: 4 equals: inlineParser tokens size