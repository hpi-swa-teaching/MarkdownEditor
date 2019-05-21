tests - state
testOpeningDelimiterIsOpener
	
	| delimiter |
	delimiter := MarkdownDelimiterEmphasis new 
		content: '**'; 
		leftFlanking: true; 
		rightFlanking: false; 
		yourself.
	self assert: delimiter isOpener.
	
	delimiter := MarkdownDelimiterEmphasis new 
		content: '**'; 
		leftFlanking: true; 
		rightFlanking: true; 
		yourself.
	self assert: delimiter isOpener