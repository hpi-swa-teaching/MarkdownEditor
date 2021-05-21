tests - state
testOpeningDelimiterIsOpener
	
	| delimiter |
	delimiter := MarkdownOpeningExtendedLinkDelimiter new 
		content: '[['; 
		yourself.
	self assert: delimiter isOpener.
	
	delimiter := MarkdownClosingExtendedLinkDelimiter new 
		content: ']]';
		yourself.
	self deny: delimiter isOpener