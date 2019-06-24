tests - extendability
testTextAfterClosingTag

	| commentBlock |
	commentBlock := MarkdownCommentBlock newFrom: '<!-- MiniMetro', Character cr.
	commentBlock append: 'is great --> more Text'.
	self assert: commentBlock isClosed