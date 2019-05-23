tests - state
testOpeningDelimiterIsOpener
	
	| delimiter |
	delimiter := MarkdownEmphasisDelimiter new 
		content: '**'; 
		leftFlanking: true; 
		rightFlanking: false; 
		yourself.
	self assert: delimiter isOpener.
	
	delimiter := MarkdownEmphasisDelimiter new 
		content: '**'; 
		leftFlanking: true; 
		rightFlanking: true; 
		yourself.
	self assert: delimiter isOpener