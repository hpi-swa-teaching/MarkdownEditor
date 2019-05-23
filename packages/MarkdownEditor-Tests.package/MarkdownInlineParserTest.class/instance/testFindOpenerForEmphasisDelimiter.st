tests - tokenization
testFindOpenerForEmphasisDelimiter

	| tokens opener closer foundOpener |
	opener := MarkdownEmphasisDelimiter new 
		content: '**'; 
		isLeftFlanking: true; 
		isRightFlanking: false; 
		yourself.
	closer := MarkdownEmphasisDelimiter new 
		content: '**'; 
		isLeftFlanking: false; 
		isRightFlanking: true; 
		yourself.
		
	tokens := OrderedCollection new.
	tokens add: opener.
	tokens add: (MarkdownString new content: 'f'; yourself).
	tokens add: closer.
	inlineParser tokens: tokens.
	
	inlineParser findOpenerFor: closer 
		ifFound: [:o | foundOpener := o].
	self assert: opener equals: foundOpener.
	
	tokens remove: opener.
	inlineParser tokens: tokens.
	inlineParser findOpenerFor: closer 
		ifFound: [:o | self fail]
	