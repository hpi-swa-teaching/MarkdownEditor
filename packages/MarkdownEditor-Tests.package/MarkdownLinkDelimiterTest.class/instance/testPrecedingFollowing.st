tests - state
testPrecedingFollowing

	| delimiter |
	delimiter := MarkdownClosingLinkDelimiter new.
	self assert: ((delimiter setPreceding: $x following: $y) = delimiter).
	
	delimiter := MarkdownOpeningLinkDelimiter new.
	self assert: ((delimiter setPreceding: $x following: $y) = delimiter)