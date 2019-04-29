initialize-release
initialize

	super initialize.
	self prototypeDelimiters: {MarkdownDelimiterItalic new. MarkdownDelimiterBold new.} asSortedCollection.
	self prototypeDelimiters sortBlock: [:a :b | a precedence > b precedence]