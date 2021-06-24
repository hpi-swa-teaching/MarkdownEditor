helpers - reference
findEnclosedLinkFrom: aRawString and: aBracketPair

	^ ((aRawString copyFrom: (aBracketPair y + 1) to: aRawString size) 
		allRangesOfRegexMatches: '^\([ \t]*[^\)\s]*[ \t]*\)')
