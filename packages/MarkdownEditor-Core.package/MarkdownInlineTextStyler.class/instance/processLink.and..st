parsing
processLink: opener and: closer

	| length nextToken |
	self inlineElements add: (self createLinkFrom: opener and: closer).
			length := 1.
			nextToken := self followingTokenOf: closer.
			self processOpeningURLDelimiter: nextToken.
			self cutOpener: opener to: length.
			^ self cutCloser: closer to: length