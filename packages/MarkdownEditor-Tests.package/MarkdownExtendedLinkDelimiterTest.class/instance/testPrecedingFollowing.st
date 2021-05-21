tests - state
testPrecedingFollowing

	| delimiter |
	delimiter := MarkdownClosingExtendedLinkDelimiter new.
	self assert: ((delimiter setPreceding: $x following: $y) = delimiter).
	
	delimiter := MarkdownOpeningExtendedLinkDelimiter new.
	self assert: ((delimiter setPreceding: $x following: $y) = delimiter)