tests - tokenization
testFindOpenerForEmphasisDelimiter

	| tokens opener closer foundOpener |
	opener := MarkdownDelimiterEmphasis new 
		content: '**'; 
		leftFlanking: true; 
		rightFlanking: false; 
		yourself.
	closer := MarkdownDelimiterEmphasis new 
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
	