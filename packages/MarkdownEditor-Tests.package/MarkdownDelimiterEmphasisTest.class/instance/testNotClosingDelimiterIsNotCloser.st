tests - state
testNotClosingDelimiterIsNotCloser
	
	| delimiter |
	delimiter := MarkdownEmphasisDelimiter new 
		content: '**'; 
		leftFlanking: true; 
		rightFlanking: false; 
		yourself.
	self deny: delimiter isCloser