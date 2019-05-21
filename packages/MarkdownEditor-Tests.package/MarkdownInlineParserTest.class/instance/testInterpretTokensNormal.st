tests - interpretation
testInterpretTokensNormal

	| tokens |
	tokens := OrderedCollection new.
	tokens add: (MarkdownString new content: 'f'; startPosition: 1; yourself).
	tokens add: (MarkdownString new content: 'o'; startPosition: 2; yourself).
	tokens add: (MarkdownString new content: 'o'; startPosition: 3; yourself).
	inlineParser tokens: tokens.
	inlineParser interpretTokens.
	self assert: inlineParser attributes isEmpty