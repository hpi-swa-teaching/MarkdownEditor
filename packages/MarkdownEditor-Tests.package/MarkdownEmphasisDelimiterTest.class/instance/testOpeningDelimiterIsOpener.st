tests - state
testOpeningDelimiterIsOpener
	
	| delimiter |
	delimiter := MarkdownEmphasisDelimiter new 
		content: '**'; 
		isLeftFlanking: true; 
		isRightFlanking: false; 
		yourself.
	self assert: delimiter isOpener.
	
	delimiter := MarkdownEmphasisDelimiter new 
		content: '**'; 
		isLeftFlanking: true; 
		isRightFlanking: true; 
		yourself.
	self assert: delimiter isOpener