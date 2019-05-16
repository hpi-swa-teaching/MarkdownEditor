tests - interpretation
testInterpretTokensStringConversion

	| tokens |
	tokens := OrderedCollection new.
	tokens add: (MarkdownDelimiterEmphasis new content: '**'; position: 1; leftFlanking: true; rightFlanking: false; yourself).
	tokens add: (MarkdownString new content: 'f'; position: 3; yourself).
	tokens add: (MarkdownDelimiterEmphasis new content: '**'; position: 4; leftFlanking: true; rightFlanking: true; yourself).
	tokens add: (MarkdownString new content: 'b'; position: 6; yourself).
	tokens add: (MarkdownDelimiterEmphasis new content: '**'; position: 7; leftFlanking: false; rightFlanking: true; yourself).
	inlineParser tokens: tokens.
	inlineParser interpretTokens.
	self assert: 1 equals: inlineParser attributes size.
	self assert: (inlineParser attributes first isKindOf: MarkdownAttributeBold).
	self assert: 1 equals: inlineParser attributes first start.
	self assert: 5 equals: inlineParser attributes first end