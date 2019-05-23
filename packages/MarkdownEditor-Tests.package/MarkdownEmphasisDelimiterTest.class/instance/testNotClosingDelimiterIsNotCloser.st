tests - state
testNotClosingDelimiterIsNotCloser
	
	| delimiter |
	delimiter := MarkdownEmphasisDelimiter new 
		content: '**'; 
		isLeftFlanking: true; 
		isRightFlanking: false; 
		yourself.
	self deny: delimiter isCloser