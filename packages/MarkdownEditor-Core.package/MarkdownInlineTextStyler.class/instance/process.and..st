parsing
process: opener and: closer

	| length nextToken urlCloser |
	(opener class = MarkdownOpeningLinkDelimiter and: [closer class = MarkdownClosingLinkDelimiter]) 
	ifTrue: [self emphases add: (closer linkStartingAt: opener).
			length := 1.
			nextToken := self followingTokenOf: closer.
			nextToken class = MarkdownOpeningURLDelimiter
				ifTrue: [urlCloser := self findCloserFor: nextToken ifFound: [:closingBracket | closingBracket].
						(urlCloser = self or: [urlCloser isNil])
							ifFalse: [emphases last url: (self content copyFrom: nextToken startPosition + nextToken length to: urlCloser endPosition - urlCloser length).
									(self tokens copyFrom: (self tokens indexOf: nextToken) to: (self tokens indexOf: urlCloser))
										select: [: token | token isDelimiter]
										thenDo: [:delimiter |
											self tokens at: (self tokens indexOf: delimiter) put: delimiter asStringToken]]].
			self cutOpener: opener to: length.
			^ self cutCloser: closer to: length.]
	ifFalse: [ (opener class = MarkdownEmphasisDelimiter and: [closer class = MarkdownEmphasisDelimiter])
				ifTrue: [	self emphases add: (closer emphasisStartingAt: opener).
						self removeDelimitersBetween: opener and: closer.
						length := closer delimiterLengthForEmphasisWith: opener.
						self cutOpener: opener to: length.
						^ self cutCloser: closer to: length]]