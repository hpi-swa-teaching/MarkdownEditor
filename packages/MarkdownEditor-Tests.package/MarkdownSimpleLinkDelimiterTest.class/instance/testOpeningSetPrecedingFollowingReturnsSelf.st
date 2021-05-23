tests - state
testOpeningSetPrecedingFollowingReturnsSelf

	| delimiter |
	delimiter := MarkdownOpeningSimpleLinkDelimiter new.
	self assert: (delimiter setPreceding: $? following: $?) equals: delimiter