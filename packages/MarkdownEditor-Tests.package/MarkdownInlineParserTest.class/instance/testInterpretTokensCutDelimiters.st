tests - interpretation
testInterpretTokensCutDelimiters

	| tokens |
	tokens := OrderedCollection new.
	tokens add: (MarkdownDelimiterEmphasis new content: '**'; position: 1; leftFlanking: true; rightFlanking: false; yourself).
	tokens add: (MarkdownString new content: 'f'; position: 3; yourself).
	tokens add: (MarkdownDelimiterEmphasis new content: '*'; position: 4; leftFlanking: false; rightFlanking: true; yourself).
	inlineParser tokens: tokens.
	inlineParser interpretTokens.
	self assert: 1 equals: inlineParser attributes size.
	self assert: (inlineParser attributes first isKindOf: MarkdownAttributeItalic).
	self assert: 2 equals: inlineParser attributes first start.
	self assert: 4 equals: inlineParser attributes first end.
	self assert: 4 equals: inlineParser tokens size