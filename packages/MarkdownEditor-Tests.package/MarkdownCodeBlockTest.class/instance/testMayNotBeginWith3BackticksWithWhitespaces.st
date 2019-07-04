tests - recognition
testMayNotBeginWith3BackticksWithWhitespaces

	| line |
	line := MarkdownLine newFrom: '`` `'.
	self deny: (MarkdownCodeBlock mayBeginWith: line)