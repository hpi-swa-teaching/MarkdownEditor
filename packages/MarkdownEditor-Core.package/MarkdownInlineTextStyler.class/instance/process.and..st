parsing
process: opener and: closer

	| length |
	(opener class = MarkdownOpeningLinkDelimiter and: [closer class = MarkdownClosingLinkDelimiter]) 
	ifTrue: [self emphases add: (closer linkStartingAt: opener).
			length := 1.
			self cutOpener: opener to: length.
			^ self cutCloser: closer to: length]
	ifFalse: [self emphases add: (closer emphasisStartingAt: opener).
			self removeDelimitersBetween: opener and: closer.
			length := closer delimiterLengthForEmphasisWith: opener.
			self cutOpener: opener to: length.
			^ self cutCloser: closer to: length]