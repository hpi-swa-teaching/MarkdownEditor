tests - state
testClosingDelimiterIsCloser
	
	| delimiter |
	delimiter := MarkdownOpeningSimpleLinkDelimiter new 
		content: '[['; 
		yourself.
	self deny: delimiter isCloser.
	
	delimiter := MarkdownClosingSimpleLinkDelimiter new 
		content: ']]';
		yourself.
	self assert: delimiter isCloser