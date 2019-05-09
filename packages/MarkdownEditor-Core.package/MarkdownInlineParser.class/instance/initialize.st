initialize-release
initialize

	super initialize.
	self tokenClasses: {MarkdownDelimiterEmphasis. MarkdownString.} asSortedCollection.
	self tokenClasses sortBlock: [:a :b | a precedence > b precedence]