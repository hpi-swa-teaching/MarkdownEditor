helpers - autolink
decideAutolinkTextMatchesFrom: aRawString with: aPossiblePath and: aPossiblePathRange

	(self isAutolinkURIFrom: aPossiblePath)
		ifTrue: [self addAutolinkType: #beNotEmail from: aPossiblePath.
				^ aRawString copyFrom: aPossiblePathRange stop + 1 to: aRawString size].
	(self isAutolinkEmailFrom: aPossiblePath)
		ifTrue: [self addAutolinkType: #beEmail from: aPossiblePath.
				^ aRawString copyFrom: aPossiblePathRange stop + 1 to: aRawString size].
	^ self processStringFrom: aRawString