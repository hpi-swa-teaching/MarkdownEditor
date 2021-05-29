tests - state
testClosingSetPrecedingFollowingReturnsSelf

	| delimiter |
	delimiter := MarkdownClosingSimpleLinkDelimiter new.
	self assert: (delimiter setPreceding: $? following: $?) equals: delimiter