parsing - inline
parseInlineElementsFrom: aRawString

	| possibleLinks str|

	str := aRawString.
	possibleLinks := aRawString allRegexMatches: '\[[^\]]*\]\([^\)]*\)'.
	self process: aRawString without: possibleLinks.