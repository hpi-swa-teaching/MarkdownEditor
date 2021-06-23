parsing
processAutolinksFrom: aRawString

	| possibleLink possibleLinkRange |
	possibleLinkRange := (aRawString allRangesOfRegexMatches: '<[^<>]*>') first.
	possibleLink := aRawString copyFrom: possibleLinkRange start + 1 to: possibleLinkRange stop - 1.
	possibleLinkRange start = 1 
		ifTrue: [(self isAutolinkURIFrom: possibleLink)
					ifTrue: [self addAutolinkType: #beNotEmail from: possibleLink.
							^ aRawString copyFrom: possibleLinkRange stop + 1 to: aRawString size].
				(self isAutolinkEmailFrom: possibleLink)
					ifTrue: [self addAutolinkType: #beEmail from: possibleLink.
							^ aRawString copyFrom: possibleLinkRange stop + 1 to: aRawString size].
				^ self processStringFrom: aRawString]
		ifFalse: [^ self processStringFrom: aRawString]