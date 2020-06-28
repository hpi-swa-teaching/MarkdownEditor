tests - state
testOpeningSetPrecedingFollowingReturnsSelf

	| delimiter |
	delimiter := MarkdownOpeningLinkDelimiter new.
	self assert: (delimiter setPreceding: $? following: $?) equals: delimiter