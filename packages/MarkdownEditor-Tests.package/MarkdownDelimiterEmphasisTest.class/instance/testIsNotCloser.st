tests - state
testIsNotCloser
	
	| delimiter |
	delimiter := MarkdownDelimiterEmphasis new 
		content: '**'; 
		leftFlanking: true; 
		rightFlanking: false; 
		yourself.
	self deny: delimiter isCloser