parsing
process: opener and: closer

	| length nextToken |
	(opener class = MarkdownOpeningLinkDelimiter and: [closer class = MarkdownClosingLinkDelimiter]) 
	ifTrue: [	self inlineElements add: (self createLinkFrom: opener and: closer).
			length := 1.
			nextToken := self followingTokenOf: closer.
			self processOpeningURLDelimiter: nextToken.
			self cutOpener: opener to: length.
			^ self cutCloser: closer to: length].
	(opener class = MarkdownEmphasisDelimiter and: [closer class = MarkdownEmphasisDelimiter])
	ifTrue: [	self inlineElements add: (self createEmphasisFrom: opener and: closer).
			self removeDelimitersBetween: opener and: closer.
			length := closer delimiterLengthForEmphasisWith: opener.
			self cutOpener: opener to: length.
			^ self cutCloser: closer to: length]