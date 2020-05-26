tests - state
testClosingDelimiterIsDelimiter
	
	| delimiter |
	delimiter := MarkdownClosingLinkDelimiter new. 
	self assert: delimiter isDelimiter.