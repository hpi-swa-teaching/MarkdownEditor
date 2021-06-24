helpers - autolink
decideAutolinkTextMatchesFrom: aRawString with: aPossiblePath and: aPossiblePathRange

	(aPossiblePath matchesRegex: MarkdownAutolink URIRegex)
		ifTrue: [self addAutolinkType: #beNotEmail from: aPossiblePath.
				^ aRawString copyFrom: aPossiblePathRange stop + 1 to: aRawString size].
	(aPossiblePath matchesRegex: MarkdownAutolink emailRegex)
		ifTrue: [self addAutolinkType: #beEmail from: aPossiblePath.
				^ aRawString copyFrom: aPossiblePathRange stop + 1 to: aRawString size].
	^ self processStringFrom: aRawString