tests - interpretation
testInterpretTokensCutDelimiterClosesTwice

	| tokens |
	tokens := OrderedCollection new.
	tokens add: (MarkdownDelimiterEmphasis new content: '*'; startPosition: 1; leftFlanking: true; rightFlanking: false; yourself).
	tokens add: (MarkdownString new content: 'a'; startPosition: 2; yourself).
	tokens add: (MarkdownDelimiterEmphasis new content: '**'; startPosition: 3; leftFlanking: true; rightFlanking: true; yourself).
	tokens add: (MarkdownString new content: 'b'; startPosition: 5; yourself).
	tokens add: (MarkdownDelimiterEmphasis new content: '***'; startPosition: 6; leftFlanking: false; rightFlanking: true; yourself).
	inlineParser tokens: tokens.
	inlineParser interpretTokens.
	self assert: 2 equals: inlineParser attributes size.
	
	self assert: (inlineParser attributes first isKindOf: MarkdownAttributeBold).
	self assert: 3 equals: inlineParser attributes first startPosition.
	self assert: 7 equals: inlineParser attributes first endPosition.
	
	self assert: (inlineParser attributes second isKindOf: MarkdownAttributeItalic).
	self assert: 1 equals: inlineParser attributes second startPosition.
	self assert: 8 equals: inlineParser attributes second endPosition.
	
	self assert: 6 equals: inlineParser tokens size