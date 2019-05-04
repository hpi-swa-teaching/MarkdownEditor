initialize-release
initialize

	super initialize.
	self prototypeTokens: {MarkdownDelimiterEmphasis new.} asSortedCollection.
	self prototypeTokens sortBlock: [:a :b | a precedence > b precedence]