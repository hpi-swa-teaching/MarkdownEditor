helper
process: aBalancedBracketCollection for: aLinkType from: aRawString

	aBalancedBracketCollection do:
		[:bracketPair | | enclosedLink |
		enclosedLink := ((aRawString copyFrom: (bracketPair y + 1) to: aRawString size) allRangesOfRegexMatches: '^\([ \t]*[^\)\s]*[ \t]*\)').
		enclosedLink
			ifNotEmpty: [(bracketPair x = 1)
				ifTrue: [ | endLinkIndex |
						endLinkIndex :=  bracketPair y + enclosedLink first stop.
						self addReferenceFrom: (aRawString copyFrom: bracketPair x to: endLinkIndex) with: aLinkType.
						^ aRawString copyFrom: endLinkIndex + 1 to: aRawString size]
				ifFalse: [^ self processStringFrom: aRawString]]].
	^ self processStringFrom: aRawString