parsing
process: opener and: closer

	(opener class = MarkdownOpeningLinkDelimiter and: [closer class = MarkdownClosingLinkDelimiter]) 
	ifTrue: [	^ self processLink: opener and: closer].
	(opener class = MarkdownEmphasisDelimiter and: [closer class = MarkdownEmphasisDelimiter])
	ifTrue: [^ self processEmphasis: opener and: closer]