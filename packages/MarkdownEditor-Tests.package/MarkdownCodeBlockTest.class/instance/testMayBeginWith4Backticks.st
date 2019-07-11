tests - recognition
testMayBeginWith4Backticks

	| line |
	line := MarkdownLine newFrom: '````'.
	self assert: (MarkdownCodeBlock mayBeginWith: line)