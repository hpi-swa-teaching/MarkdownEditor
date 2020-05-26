tests - state
testMatches

	| openingDelimiter closingDelimiter |
	closingDelimiter := MarkdownClosingURLDelimiter new.
	openingDelimiter := MarkdownOpeningURLDelimiter new.
	
	self assert: (closingDelimiter matches: openingDelimiter).