tests - state
testClosingSetPrecedingFollowingReturnsSelf

	| delimiter |
	delimiter := MarkdownClosingExtendedLinkDelimiter new.
	self assert: (delimiter setPreceding: $? following: $?) equals: delimiter