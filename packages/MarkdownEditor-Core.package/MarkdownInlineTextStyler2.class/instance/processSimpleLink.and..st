parsing
processSimpleLink: opener and: closer

	| length link|
	
	link := self createLinkFrom: opener and: closer.
	link url: link content.
	self inlineElements add: (link).
	length := 1.
	self cutOpener: opener to: length.
	^ self cutCloser: closer to: length