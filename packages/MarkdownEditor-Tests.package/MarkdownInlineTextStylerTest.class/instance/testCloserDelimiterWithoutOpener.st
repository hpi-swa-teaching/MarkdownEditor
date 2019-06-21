tests - tokenization
testCloserDelimiterWithoutOpener

	| closer |
	closer := MarkdownEmphasisDelimiter new 
		content: '**'; 
		isLeftFlanking: false; 
		isRightFlanking: true; 
		yourself.
		
	inlineParser tokens 
		addAll: {(MarkdownString new content: 'f'; yourself).
				closer}.
	
	inlineParser findOpenerFor: closer 
		ifFound: [:o | self fail]
	