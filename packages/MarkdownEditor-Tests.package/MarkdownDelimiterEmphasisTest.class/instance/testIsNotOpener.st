tests - state
testIsNotOpener
	
	| delimiter |
	delimiter := MarkdownDelimiterEmphasis new 
		content: '**'; 
		leftFlanking: false; 
		rightFlanking: true; 
		yourself.
	self deny: delimiter isOpener