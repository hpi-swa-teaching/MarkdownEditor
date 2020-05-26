tests - state
testOpeningDelimiterIsOpener
	
	| delimiter |
	delimiter := MarkdownOpeningURLDelimiter new 
		content: '('; 
		yourself.
	self assert: delimiter isOpener.
	
	delimiter := MarkdownClosingURLDelimiter new 
		content: ')';
		yourself.
	self deny: delimiter isOpener