tests - tokenization
testCloserDelimiterWithoutOpener

	| closer |
	closer := MarkdownItalicBoldDelimiter new 
		content: '**'; 
		isLeftFlanking: false; 
		isRightFlanking: true; 
		yourself.
		
	inlineTextStyler tokens 
		addAll: {(MarkdownString new content: 'f'; yourself).
				closer}.
	
	inlineTextStyler findOpenerFor: closer 
		ifFound: [:o | self fail]
	