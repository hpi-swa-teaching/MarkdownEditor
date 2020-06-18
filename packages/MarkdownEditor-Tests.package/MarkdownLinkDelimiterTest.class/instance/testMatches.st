tests - state
testMatches

	| openingDelimiter closingDelimiter |
	closingDelimiter := MarkdownClosingLinkDelimiter new.
	openingDelimiter := MarkdownOpeningLinkDelimiter new.
	
	self assert: (closingDelimiter matches: openingDelimiter).