tests
testIsCloser
	
	| delimiter |
	delimiter := MarkdownDelimiterEmphasis new content: '**'; leftFlanking: true; rightFlanking: false yourself.
	self deny: delimiter isCloser.
	delimiter := MarkdownDelimiterEmphasis new content: '**'; leftFlanking: false; rightFlanking: true yourself.
	self assert: delimiter isCloser.
	delimiter := MarkdownDelimiterEmphasis new content: '**'; leftFlanking: true; rightFlanking: true yourself.
	self assert: delimiter isCloser