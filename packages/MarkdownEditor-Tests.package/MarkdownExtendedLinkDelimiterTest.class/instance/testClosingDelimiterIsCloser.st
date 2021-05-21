tests - state
testClosingDelimiterIsCloser
	
	| delimiter |
	delimiter := MarkdownOpeningExtendedLinkDelimiter new 
		content: '[['; 
		yourself.
	self deny: delimiter isCloser.
	
	delimiter := MarkdownClosingExtendedLinkDelimiter new 
		content: ']]';
		yourself.
	self assert: delimiter isCloser