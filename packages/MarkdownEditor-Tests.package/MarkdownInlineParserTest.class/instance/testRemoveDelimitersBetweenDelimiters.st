tests - interpretation
testRemoveDelimitersBetweenDelimiters

	| tokens closer opener |
	tokens := OrderedCollection new.
	opener := MarkdownEmphasisDelimiter new content: '**'; startPosition: 1; leftFlanking: true; rightFlanking: false; yourself.
	tokens add: opener.
	tokens add: (MarkdownString new content: 'f'; startPosition: 3; yourself).
	tokens add: (MarkdownEmphasisDelimiter new content: '*'; startPosition: 4; leftFlanking: true; rightFlanking: true; yourself).
	tokens add: (MarkdownString new content: 'o'; startPosition: 5; yourself).
	closer := MarkdownEmphasisDelimiter new content: '**'; startPosition: 6; leftFlanking: false; rightFlanking: true; yourself.
	tokens add: closer.
	tokens add: (MarkdownString new content: ' '; startPosition: 8; yourself).
	tokens add: (MarkdownString new content: 'o'; startPosition: 9; yourself).
	tokens add: (MarkdownEmphasisDelimiter new content: '*'; startPosition: 10; leftFlanking: false; rightFlanking: true; yourself).
	
	inlineParser tokens: tokens.
	inlineParser removeDelimitersBetween: opener and: closer.
	self assert: (inlineParser tokens third isKindOf: MarkdownString)