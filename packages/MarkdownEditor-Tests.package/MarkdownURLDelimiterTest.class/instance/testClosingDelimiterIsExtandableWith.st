tests - state
testClosingDelimiterIsExtandableWith
	
	| delimiter |
	delimiter := MarkdownClosingURLDelimiter new.
	self assert: (delimiter isExtendableWith: $))
