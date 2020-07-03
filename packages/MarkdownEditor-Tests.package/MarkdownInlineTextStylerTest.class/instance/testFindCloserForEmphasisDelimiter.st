tests - tokenization
testFindCloserForEmphasisDelimiter

	| opener closer |
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
		
	inlineTextStyler tokens 
		addAll: {opener.
				(MarkdownString new content: 'f'; yourself).
				closer}.
	
	inlineTextStyler findCloserFor: opener 
		ifFound: [:o | ^ self assert: closer equals: o].
	self fail