tests - state
testClosingSetPrecedingFollowingReturnsSelf

	| delimiter |
	delimiter := MarkdownClosingLinkDelimiter new.
	self assert: (delimiter setPreceding: $? following: $?) equals: delimiter