parsing
findClosingDelimiterFor: aMarkdownDelimiter in: aCollectionOfMarkdownTokens ifFound: aBlock

	| idx shortenedCollection |
	idx := aCollectionOfMarkdownTokens indexOf: aMarkdownDelimiter.
	shortenedCollection := aCollectionOfMarkdownTokens copyFrom: idx + 1 to: aCollectionOfMarkdownTokens size.
	shortenedCollection 
		select: [:token | token isDelimiter]
		thenDo: [:delimiter | 
			(delimiter content = aMarkdownDelimiter content)
				ifTrue: [^ aBlock value: delimiter]]
	