tests - extendability
testClosingTagInFirstLineCloses

	| commentBlock |
	commentBlock := MarkdownCommentBlock newFrom: '<!-- MiniMetro -->', Character cr.
	self assert: commentBlock isClosed