parsing
processAutolinksFrom: aRawString

	| possiblePath possiblePathRange |
	possiblePathRange := (aRawString allRangesOfRegexMatches: '<[^<>]*>') first.
	possiblePath := aRawString copyFrom: possiblePathRange start + 1 to: possiblePathRange stop - 1.
	possiblePathRange start = 1
		ifTrue: [^ self decideAutolinkTextMatchesFrom: aRawString with: possiblePath and: possiblePathRange]
		ifFalse: [^ self processStringFrom: aRawString]