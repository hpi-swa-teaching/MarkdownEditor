tests - matching
testMismatchOverlappingOpeningAndClosingTag

	self deny: (MarkdownCommentBlock matches: '<!-->').
	self deny: (MarkdownCommentBlock matches: '<!--->')