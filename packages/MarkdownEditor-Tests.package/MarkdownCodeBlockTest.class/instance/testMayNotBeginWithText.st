tests - recognition
testMayNotBeginWithText

	| line |
	line := MarkdownLine newFrom: 'No backticks here'.
	self deny: (MarkdownCodeBlock mayBeginWith: line)