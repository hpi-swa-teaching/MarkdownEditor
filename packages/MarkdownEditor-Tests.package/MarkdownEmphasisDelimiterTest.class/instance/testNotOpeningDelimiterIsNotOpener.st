tests - state
testNotOpeningDelimiterIsNotOpener
	
	| delimiter |
	delimiter := MarkdownEmphasisDelimiter new 
		content: '**'; 
		isLeftFlanking: false; 
		isRightFlanking: true; 
		yourself.
	self deny: delimiter isOpener