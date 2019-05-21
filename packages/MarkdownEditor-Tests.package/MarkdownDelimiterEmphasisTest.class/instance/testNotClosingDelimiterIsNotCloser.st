tests - state
testNotClosingDelimiterIsNotCloser
	
	| delimiter |
	delimiter := MarkdownDelimiterEmphasis new 
		content: '**'; 
		leftFlanking: true; 
		rightFlanking: false; 
		yourself.
	self deny: delimiter isCloser