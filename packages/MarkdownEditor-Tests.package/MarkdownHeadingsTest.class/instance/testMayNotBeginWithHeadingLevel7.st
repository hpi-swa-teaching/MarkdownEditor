tests - recognition
testMayNotBeginWithHeadingLevel7

	| line |
	line := MarkdownLine newFrom: '#######'.
	self deny: (MarkdownHeading mayBeginWith: line)