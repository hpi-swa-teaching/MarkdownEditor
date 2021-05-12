parsing
process: opener and: closer

	(opener type = 'LinkDelimiter' and: [closer type = 'LinkDelimiter']) 
		ifTrue: [	^ self processLink: opener and: closer].
	(opener type = 'ItalicBoldDelimiter' and: [closer type = 'ItalicBoldDelimiter'])
		ifTrue: [^ self processEmphasis: opener and: closer].
	(opener type = 'StrikeDelimiter' and: [closer type = 'StrikeDelimiter'])
		ifTrue: [^ self processEmphasis: opener and: closer].
	^ closer