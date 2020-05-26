tests - state
testOpeningDelimiterIsOpener
	
	| delimiter |
	delimiter := MarkdownOpeningLinkDelimiter new 
		content: '[['; 
		yourself.
	self assert: delimiter isOpener.
	
	delimiter := MarkdownClosingLinkDelimiter new 
		content: ']]';
		yourself.
	self deny: delimiter isOpener