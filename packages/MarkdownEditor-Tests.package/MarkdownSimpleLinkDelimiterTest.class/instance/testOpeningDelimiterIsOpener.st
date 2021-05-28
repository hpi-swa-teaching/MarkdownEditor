tests - state
testOpeningDelimiterIsOpener
	
	| delimiter |
	delimiter := MarkdownOpeningSimpleLinkDelimiter new 
		content: '[['; 
		yourself.
	self assert: delimiter isOpener.
	
	delimiter := MarkdownClosingSimpleLinkDelimiter new 
		content: ']]';
		yourself.
	self deny: delimiter isOpener