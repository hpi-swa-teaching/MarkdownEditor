tests - state
testOpeningDelimiterIsExtandableWith
	
	| delimiter |
	delimiter := MarkdownOpeningURLDelimiter new.
	self assert: (delimiter isExtendableWith: $()
