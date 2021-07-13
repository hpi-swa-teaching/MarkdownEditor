helpers - reference
findEnclosedLinkFrom: aRawString and: aBracketPair

	^ (aRawString allButFirst: aBracketPair y) 
		allRangesOfRegexMatches: '^\([ \t]*[^\)\s]*[ \t]*\)'
