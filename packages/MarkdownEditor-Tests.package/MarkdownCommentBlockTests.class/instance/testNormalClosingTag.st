tests - extendability
testNormalClosingTag

	| commentBlock |
	commentBlock := MarkdownCommentBlock newFrom: '<!-- MiniMetro', Character cr.
	commentBlock append: 'is great -->'.
	self assert: commentBlock isClosed