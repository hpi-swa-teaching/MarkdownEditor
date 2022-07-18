helpers - autolink
decideAutolinkTextMatchesFrom: aRawString with: aPossiblePath and: aPossiblePathRange

	(aPossiblePath matchesRegex: MarkdownAutolink uriRegex)
		ifTrue: [self addToInlineElements: (MarkdownAutolink newWith: #beNotEmail and: aPossiblePath).
				^ aRawString allButFirst: aPossiblePathRange stop].
	(aPossiblePath matchesRegex: MarkdownAutolink emailRegex)
		ifTrue: [self addToInlineElements: (MarkdownAutolink newWith: #beEmail and: aPossiblePath).
				^ aRawString allButFirst: aPossiblePathRange stop].
	^ self processStringFrom: aRawString