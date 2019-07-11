tests - recognition
testMayBeginWith3BackticksWithInfoString

	| line |
	line := MarkdownLine newFrom: '```smalltalk'.
	self assert: (MarkdownCodeBlock mayBeginWith: line)