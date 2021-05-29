tests - state
testMatches

	| openingDelimiter closingDelimiter |
	closingDelimiter := MarkdownClosingSimpleLinkDelimiter new.
	openingDelimiter := MarkdownOpeningSimpleLinkDelimiter new.
	
	self assert: (closingDelimiter matches: openingDelimiter).
	self assert: (openingDelimiter matches: closingDelimiter)