tests - recognition
testMayBeginWithOpeningTag

	| line |
	line := MarkdownLine newFrom: '<!--'.
	self assert: (MarkdownCommentBlock mayBeginWith: line)