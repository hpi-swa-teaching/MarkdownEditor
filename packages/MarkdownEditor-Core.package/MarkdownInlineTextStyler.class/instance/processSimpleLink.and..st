parsing
processSimpleLink: opener and: closer

	| length |
	
	self inlineElements add: (self createLinkFrom: opener and: closer).
	length := 1.
	self processOpeningURLDelimiter: opener.
	self cutOpener: opener to: length.
	^ self cutCloser: closer to: length