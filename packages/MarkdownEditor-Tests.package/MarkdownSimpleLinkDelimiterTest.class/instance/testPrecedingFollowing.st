tests - state
testPrecedingFollowing

	| delimiter |
	delimiter := MarkdownClosingSimpleLinkDelimiter new.
	self assert: ((delimiter setPreceding: $x following: $y) = delimiter).
	
	delimiter := MarkdownOpeningSimpleLinkDelimiter new.
	self assert: ((delimiter setPreceding: $x following: $y) = delimiter)