tests - state
testOpeningDelimiterIsDelimiter
	
	| delimiter |
	delimiter := MarkdownOpeningExtendedLinkDelimiter new. 
	self assert: delimiter isDelimiter.