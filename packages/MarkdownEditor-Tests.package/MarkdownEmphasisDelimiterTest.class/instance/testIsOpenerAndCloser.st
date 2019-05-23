tests - state
testIsOpenerAndCloser
	
	| delimiter |
	delimiter := MarkdownEmphasisDelimiter new 
		content: '**'; 	
		leftFlanking: true; 
		rightFlanking: true; 
		yourself.
	self assert: delimiter isOpenerAndCloser