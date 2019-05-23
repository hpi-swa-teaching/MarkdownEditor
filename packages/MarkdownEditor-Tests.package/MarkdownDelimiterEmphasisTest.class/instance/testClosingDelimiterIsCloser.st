tests - state
testClosingDelimiterIsCloser
	
	| delimiter |
	delimiter := MarkdownEmphasisDelimiter new 
		content: '**'; 
		leftFlanking: false; 
		rightFlanking: true; 
		yourself.
	self assert: delimiter isCloser.
	
	delimiter := MarkdownEmphasisDelimiter new 
		content: '**'; 
		leftFlanking: true; 
		rightFlanking: true; 
		yourself.
	self assert: delimiter isCloser