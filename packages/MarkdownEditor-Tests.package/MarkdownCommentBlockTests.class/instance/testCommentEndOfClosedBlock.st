tests - comment
testCommentEndOfClosedBlock

	| commentBlock |
	commentBlock := MarkdownCommentBlock newFrom: '<!-- MiniMetro', Character cr.
	commentBlock append: 'is cool -->'.
	self assert: 26 equals: commentBlock commentEnd