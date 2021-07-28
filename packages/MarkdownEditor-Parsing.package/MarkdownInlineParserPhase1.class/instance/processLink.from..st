helpers - reference
processLink: aBalancedBracketCollection from: aRawString

	aBalancedBracketCollection do:
		[:bracketPair | | enclosedLink |
		enclosedLink := self findEnclosedLinkFrom: aRawString and: bracketPair.
		enclosedLink
			ifNotEmpty: [(self isOpenBracketAtOneFrom: bracketPair)
				ifTrue: [	^ self processPossible: MarkdownLink with: bracketPair 
						from: aRawString and: enclosedLink]
				ifFalse: [^ self processStringFrom: aRawString]]].
	^ self processStringFrom: aRawString