tests
testIsOpener
	
	| delimiter |
	delimiter := MarkdownDelimiterEmphasis new content: '**'; leftFlanking: true; rightFlanking: false yourself.
	self assert: delimiter isOpener.
	delimiter := MarkdownDelimiterEmphasis new content: '**'; leftFlanking: false; rightFlanking: true yourself.
	self deny: delimiter isOpener.
	delimiter := MarkdownDelimiterEmphasis new content: '**'; leftFlanking: true; rightFlanking: true yourself.
	self assert: delimiter isOpener