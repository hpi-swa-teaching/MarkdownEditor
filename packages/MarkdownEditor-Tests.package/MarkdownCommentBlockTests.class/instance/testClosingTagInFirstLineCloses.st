tests - extendability
testClosingTagInFirstLineCloses

	| commentBlock |
	commentBlock := MarkdownCommentBlock newFrom: '<!-- Comment closed at the same line -->', Character cr.
	self assert: commentBlock isClosed