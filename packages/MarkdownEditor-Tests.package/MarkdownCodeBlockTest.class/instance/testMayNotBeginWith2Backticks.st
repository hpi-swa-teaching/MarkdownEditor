tests - recognition
testMayNotBeginWith2Backticks

	| line |
	line := MarkdownLine newFrom: '``'.
	self deny: (MarkdownCodeBlock mayBeginWith: line)