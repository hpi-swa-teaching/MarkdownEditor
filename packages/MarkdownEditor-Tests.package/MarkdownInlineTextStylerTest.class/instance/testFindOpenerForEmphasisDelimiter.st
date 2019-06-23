tests - tokenization
testFindOpenerForEmphasisDelimiter

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
	
	inlineTextStyler findOpenerFor: closer 
		ifFound: [:o | ^ self assert: opener equals: o].
	self fail