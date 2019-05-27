tests - tokenization
testFindOpenerForEmphasisDelimiter

	| opener closer foundOpener |
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
		
	inlineParser tokens 
		addAll: {opener.
				(MarkdownString new content: 'f'; yourself).
				closer}.
	
	inlineParser findOpenerFor: closer 
		ifFound: [:o | foundOpener := o].
	self assert: opener equals: foundOpener