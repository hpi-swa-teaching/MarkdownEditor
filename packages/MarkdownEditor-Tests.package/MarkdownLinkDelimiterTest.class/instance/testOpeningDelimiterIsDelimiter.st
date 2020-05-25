tests - state
testOpeningDelimiterIsDelimiter
	
	| delimiter |
	delimiter := MarkdownOpeningLinkDelimiter new. 
	self assert: delimiter isDelimiter.