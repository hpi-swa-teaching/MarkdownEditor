tests - recognition
testMayNotBeginWithHeadingLevel0

	| line |
	line := MarkdownLine newFrom: ''.
	self deny: (MarkdownHeading mayBeginWith: line)