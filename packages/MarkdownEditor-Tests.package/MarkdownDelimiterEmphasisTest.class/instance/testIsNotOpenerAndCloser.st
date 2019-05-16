tests - state
testIsNotOpenerAndCloser
	
	| delimiter |
	delimiter := MarkdownDelimiterEmphasis new 
		content: '**'; 	
		leftFlanking: true; 
		rightFlanking: false; 
		yourself.
	self deny: delimiter isOpenerAndCloser.
	
	delimiter := MarkdownDelimiterEmphasis new 
		content: '**'; 	
		leftFlanking: false; 
		rightFlanking: true; 
		yourself.
	self deny: delimiter isOpenerAndCloser