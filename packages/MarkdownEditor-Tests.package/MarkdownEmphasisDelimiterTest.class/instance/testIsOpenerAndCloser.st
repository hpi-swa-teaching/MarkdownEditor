tests - state
testIsOpenerAndCloser
	
	| delimiter |
	delimiter := MarkdownEmphasisDelimiter new 
		content: '**'; 	
		isLeftFlanking: true; 
		isRightFlanking: true; 
		yourself.
	self assert: delimiter isOpenerAndCloser