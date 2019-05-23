tests - state
testIsNotOpenerAndCloser
	
	| delimiter |
	delimiter := MarkdownEmphasisDelimiter new 
		content: '**'; 	
		leftFlanking: true; 
		rightFlanking: false; 
		yourself.
	self deny: delimiter isOpenerAndCloser.
	
	delimiter := MarkdownEmphasisDelimiter new 
		content: '**'; 	
		leftFlanking: false; 
		rightFlanking: true; 
		yourself.
	self deny: delimiter isOpenerAndCloser