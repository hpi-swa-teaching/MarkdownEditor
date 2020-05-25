tests - state
testClosingDelimiterIsDelimiter
	
	| delimiter |
	delimiter := MarkdownClosingURLDelimiter new. 
	self assert: delimiter isDelimiter.