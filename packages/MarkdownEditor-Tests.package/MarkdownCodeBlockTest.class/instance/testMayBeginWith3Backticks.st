tests - recognition
testMayBeginWith3Backticks

	| line |
	line := MarkdownLine newFrom: '```'.
	self assert: (MarkdownCodeBlock mayBeginWith: line)