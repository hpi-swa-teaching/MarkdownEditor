initialize-release
initialize

	super initialize.
	self 
		clean;
		tokenClasses: {MarkdownEmphasisDelimiter. MarkdownString}