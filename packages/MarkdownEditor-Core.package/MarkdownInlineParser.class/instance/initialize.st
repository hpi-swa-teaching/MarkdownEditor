initialize-release
initialize

	super initialize.
	self 
		clean;
		tokenClasses: {MarkdownEmphasisDelimiter. MarkdownString} asSortedCollection.
	self tokenClasses sortBlock: [:a :b | a precedence > b precedence]