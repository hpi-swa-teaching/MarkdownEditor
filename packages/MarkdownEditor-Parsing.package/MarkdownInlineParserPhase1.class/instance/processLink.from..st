helpers - reference
processLink: aBalancedBracketCollection from: aRawString

	aBalancedBracketCollection do:
		[:bracketPair | | enclosedLink |
		enclosedLink := self findEnclosedLinkFrom: aRawString and: bracketPair.
		enclosedLink
			ifNotEmpty: [(self isOpenBracketAtOneFrom: bracketPair)
				ifTrue: [ | endLinkIndex |
						endLinkIndex := self findCloserIndexFrom: enclosedLink and: bracketPair.
						self addReferenceFrom: (aRawString copyFrom: bracketPair x to: endLinkIndex) with: MarkdownLink2.
						^ aRawString copyFrom: endLinkIndex + 1 to: aRawString size]
				ifFalse: [^ self processStringFrom: aRawString]]].
	^ self processStringFrom: aRawString