parsing
process: opener and: closer

	(opener type = 'LinkDelimiter' and: [closer type = 'LinkDelimiter']) 
		ifTrue: [	^ self processLink: opener and: closer].
	(opener type = 'EmphasisDelimiter' and: [closer type = 'EmphasisDelimiter'])
		ifTrue: [^ self processEmphasis: opener and: closer].
	
	^ closer