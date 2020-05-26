tests - state
testOpeningDelimiterIsDelimiter
	
	| delimiter |
	delimiter := MarkdownOpeningURLDelimiter new. 
	self assert: delimiter isDelimiter.