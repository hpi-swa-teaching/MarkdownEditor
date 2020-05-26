tests - state
testClosingDelimiterIsCloser
	
	| delimiter |
	delimiter := MarkdownOpeningURLDelimiter new 
		content: '('; 
		yourself.
	self deny: delimiter isCloser.
	
	delimiter := MarkdownClosingURLDelimiter new 
		content: ')';
		yourself.
	self assert: delimiter isCloser