tests - tokenization
testFindOpenerForEmphasisDelimiter

	| opener closer |
	opener := MarkdownItalicBoldDelimiter new 
		content: '**'; 
		isLeftFlanking: true; 
		isRightFlanking: false; 
		yourself.
	closer := MarkdownItalicBoldDelimiter new 
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