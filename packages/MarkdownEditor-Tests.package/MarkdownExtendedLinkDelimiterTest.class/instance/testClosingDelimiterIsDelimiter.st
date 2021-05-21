tests - state
testClosingDelimiterIsDelimiter
	
	| delimiter |
	delimiter := MarkdownClosingExtendedLinkDelimiter new. 
	self assert: delimiter isDelimiter.