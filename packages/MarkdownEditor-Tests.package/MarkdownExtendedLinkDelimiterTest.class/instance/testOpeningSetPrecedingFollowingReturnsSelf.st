tests - state
testOpeningSetPrecedingFollowingReturnsSelf

	| delimiter |
	delimiter := MarkdownOpeningExtendedLinkDelimiter new.
	self assert: (delimiter setPreceding: $? following: $?) equals: delimiter