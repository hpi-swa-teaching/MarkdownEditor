tests - state
testOpeningDelimiterIsDelimiter
	
	| delimiter |
	delimiter := MarkdownOpeningSimpleLinkDelimiter new. 
	self assert: delimiter isDelimiter.