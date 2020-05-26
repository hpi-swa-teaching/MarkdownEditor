tests - state
testOpeningSetPrecedingFollowing

	| delimiter |
	delimiter := MarkdownOpeningURLDelimiter new.
	self assert: (delimiter setPreceding: $? following: $?) equals: delimiter