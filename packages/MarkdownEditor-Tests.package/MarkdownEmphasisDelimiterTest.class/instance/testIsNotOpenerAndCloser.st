tests - state
testIsNotOpenerAndCloser
	
	| delimiter |
	delimiter := MarkdownEmphasisDelimiter new 
		content: '**'; 	
		isLeftFlanking: true; 
		isRightFlanking: false; 
		yourself.
	self deny: delimiter isOpenerAndCloser.
	
	delimiter := MarkdownEmphasisDelimiter new 
		content: '**'; 	
		isLeftFlanking: false; 
		isRightFlanking: true; 
		yourself.
	self deny: delimiter isOpenerAndCloser