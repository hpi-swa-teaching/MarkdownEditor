tests - state
testMatches

	| openingDelimiter closingDelimiter |
	closingDelimiter := MarkdownClosingExtendedLinkDelimiter new.
	openingDelimiter := MarkdownOpeningExtendedLinkDelimiter new.
	
	self assert: (closingDelimiter matches: openingDelimiter).
	self assert: (openingDelimiter matches: closingDelimiter)