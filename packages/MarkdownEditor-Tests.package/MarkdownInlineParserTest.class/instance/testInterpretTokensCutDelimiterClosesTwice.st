tests - interpretation
testInterpretTokensCutDelimiterClosesTwice

	| tokens |
	tokens := OrderedCollection new.
	tokens add: (MarkdownDelimiterEmphasis new content: '*'; position: 1; leftFlanking: true; rightFlanking: false; yourself).
	tokens add: (MarkdownString new content: 'a'; position: 2; yourself).
	tokens add: (MarkdownDelimiterEmphasis new content: '**'; position: 3; leftFlanking: true; rightFlanking: true; yourself).
	tokens add: (MarkdownString new content: 'b'; position: 5; yourself).
	tokens add: (MarkdownDelimiterEmphasis new content: '***'; position: 6; leftFlanking: false; rightFlanking: true; yourself).
	inlineParser tokens: tokens.
	inlineParser interpretTokens.
	self assert: 2 equals: inlineParser attributes size.
	self assert: (inlineParser attributes first isKindOf: MarkdownAttributeBold).
	self assert: (inlineParser attributes second isKindOf: MarkdownAttributeItalic).
	self assert: 3 equals: inlineParser attributes first start.
	self assert: 7 equals: inlineParser attributes first end.
	self assert: 1 equals: inlineParser attributes second start.
	self assert: 8 equals: inlineParser attributes second end.
	self assert: 6 equals: inlineParser tokens size