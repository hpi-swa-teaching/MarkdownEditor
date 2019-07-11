tests - recognition
testMayBeginWithOpeningTagWithText

	| line |
	line := MarkdownLine newFrom: '<!--MiniMetro'.
	self assert: (MarkdownCommentBlock mayBeginWith: line)