tests - matching
testMayNotBeginWith4Indentation

	self deny: (MarkdownCommentBlock mayBeginWith: '    <!--')