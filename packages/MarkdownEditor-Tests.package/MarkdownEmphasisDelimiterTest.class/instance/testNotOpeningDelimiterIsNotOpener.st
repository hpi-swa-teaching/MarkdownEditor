tests - state
testNotOpeningDelimiterIsNotOpener
	
	| delimiter |
	delimiter := MarkdownEmphasisDelimiter new 
		content: '**'; 
		leftFlanking: false; 
		rightFlanking: true; 
		yourself.
	self deny: delimiter isOpener