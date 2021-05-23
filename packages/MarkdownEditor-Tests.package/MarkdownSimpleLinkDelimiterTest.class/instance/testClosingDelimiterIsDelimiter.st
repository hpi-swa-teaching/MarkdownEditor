tests - state
testClosingDelimiterIsDelimiter
	
	| delimiter |
	delimiter := MarkdownClosingSimpleLinkDelimiter new. 
	self assert: delimiter isDelimiter.