tests - comment
testCommentEndOfAutoClosedBlock

	| commentBlock |
	commentBlock := MarkdownCommentBlock newFrom: '<!-- MiniMetro'.
	self assert: 14 equals: commentBlock commentEnd