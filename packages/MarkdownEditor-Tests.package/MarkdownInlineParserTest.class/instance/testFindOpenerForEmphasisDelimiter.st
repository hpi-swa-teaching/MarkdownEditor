tests - tokenization
testFindOpenerForEmphasisDelimiter

	| tokens opener closer foundOpener |
	opener := MarkdownEmphasisDelimiter new 
		content: '**'; 
		leftFlanking: true; 
		rightFlanking: false; 
		yourself.
	closer := MarkdownEmphasisDelimiter new 
		content: '**'; 
		leftFlanking: false; 
		rightFlanking: true; 
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
	