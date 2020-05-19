tests - state
testClosingDelimiterIsCloser
	
	| delimiter |
	delimiter := MarkdownOpeningLinkDelimiter new 
		content: '[['; 
		yourself.
	self deny: delimiter isCloser.
	
	delimiter := MarkdownClosingLinkDelimiter new 
		content: ']]';
		yourself.
	self assert: delimiter isCloser