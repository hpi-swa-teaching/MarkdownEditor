tests - interpretation
testInterpretTokensNormal

	| tokens |
	tokens := OrderedCollection new.
	tokens add: (MarkdownString new content: 'f'; position: 1; yourself).
	tokens add: (MarkdownString new content: 'o'; position: 2; yourself).
	tokens add: (MarkdownString new content: 'o'; position: 3; yourself).
	inlineParser tokens: tokens.
	inlineParser interpretTokens.
	self assert: inlineParser attributes isEmpty