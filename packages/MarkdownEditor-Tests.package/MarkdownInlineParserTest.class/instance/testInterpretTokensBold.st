tests - interpretation
testInterpretTokensBold

	| tokens |
	tokens := OrderedCollection new.
	tokens add: (MarkdownDelimiterEmphasis new content: '**'; position: 1; leftFlanking: true; rightFlanking: false; yourself).
	tokens add: (MarkdownString new content: 'f'; position: 3; yourself).
	tokens add: (MarkdownString new content: 'o'; position: 4; yourself).
	tokens add: (MarkdownString new content: 'o'; position: 5; yourself).
	tokens add: (MarkdownDelimiterEmphasis new content: '**'; position: 6; leftFlanking: false; rightFlanking: true; yourself).
	inlineParser tokens: tokens.
	inlineParser interpretTokens.
	self assert: 1 equals: inlineParser attributes size.
	self assert: (inlineParser attributes first isKindOf: MarkdownAttributeBold).
	self assert: 1 equals: inlineParser attributes first start.
	self assert: 7 equals: inlineParser attributes first end