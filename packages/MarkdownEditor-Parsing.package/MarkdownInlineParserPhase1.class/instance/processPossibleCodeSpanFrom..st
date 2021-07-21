parsing
processPossibleCodeSpanFrom: aRawString

	| possibleCodeSpans |
	possibleCodeSpans := aRawString allRangesOfRegexMatches: '`+'.
	possibleCodeSpans size > 1
		ifTrue: [^ self evaluateForCodeSpan: possibleCodeSpans and: aRawString]
		ifFalse: [^ self processStringFrom: aRawString]