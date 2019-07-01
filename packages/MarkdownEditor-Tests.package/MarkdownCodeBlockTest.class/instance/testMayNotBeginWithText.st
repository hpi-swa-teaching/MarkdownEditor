tests - matching
testMayNotBeginWithText

	self deny: (MarkdownCodeBlock mayBeginWith: 'No backticks here')