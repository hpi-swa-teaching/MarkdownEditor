helpers - reference
process: aBalancedBracketCollection for: aReferenceType from: aRawString

	aBalancedBracketCollection do:
		[:bracketPair | | enclosedLink |
		enclosedLink := ((aRawString copyFrom: (bracketPair y + 1) to: aRawString size) allRangesOfRegexMatches: '^\([ \t]*[^\)\s]*[ \t]*\)').
		enclosedLink
			ifNotEmpty: [bracketPair x = 1
				ifTrue: [^ self findCloserIndexFrom: aRawString with: bracketPair and: enclosedLink andAddWith: aReferenceType]
				ifFalse: [^ self processStringFrom: aRawString]]].
	^ self processStringFrom: aRawString