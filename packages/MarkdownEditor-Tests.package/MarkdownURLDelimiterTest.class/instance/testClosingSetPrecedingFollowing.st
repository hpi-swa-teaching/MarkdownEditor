tests - state
testClosingSetPrecedingFollowing

	| delimiter |
	delimiter := MarkdownClosingURLDelimiter new.
	self assert: (delimiter setPreceding: $? following: $?) equals: delimiter