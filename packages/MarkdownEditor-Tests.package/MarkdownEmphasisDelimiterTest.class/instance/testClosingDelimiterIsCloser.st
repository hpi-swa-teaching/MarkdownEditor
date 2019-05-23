tests - state
testClosingDelimiterIsCloser
	
	| delimiter |
	delimiter := MarkdownEmphasisDelimiter new 
		content: '**'; 
		isLeftFlanking: false; 
		isRightFlanking: true; 
		yourself.
	self assert: delimiter isCloser.
	
	delimiter := MarkdownEmphasisDelimiter new 
		content: '**'; 
		isLeftFlanking: true; 
		isRightFlanking: true; 
		yourself.
	self assert: delimiter isCloser