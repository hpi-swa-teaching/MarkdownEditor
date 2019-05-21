tests - interpretation
testInterpretTokensItalics

	| tokens |
	tokens := OrderedCollection new.
	tokens add: (MarkdownDelimiterEmphasis new content: '*'; startPosition: 1; leftFlanking: true; rightFlanking: false; yourself).
	tokens add: (MarkdownString new content: 'f'; startPosition: 2; yourself).
	tokens add: (MarkdownString new content: 'o'; startPosition: 3; yourself).
	tokens add: (MarkdownString new content: 'o'; startPosition: 4; yourself).
	tokens add: (MarkdownDelimiterEmphasis new content: '*'; startPosition: 5; leftFlanking: false; rightFlanking: true; yourself).
	inlineParser tokens: tokens.
	inlineParser interpretTokens.
	self assert: 1 equals: inlineParser attributes size.
	self assert: (inlineParser attributes first isKindOf: MarkdownAttributeItalic).
	self assert: 1 equals: inlineParser attributes first startPosition.
	self assert: 5 equals: inlineParser attributes first endPosition