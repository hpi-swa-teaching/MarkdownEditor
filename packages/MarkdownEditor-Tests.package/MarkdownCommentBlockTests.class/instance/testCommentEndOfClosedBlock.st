tests - comment
testCommentEndOfClosedBlock

	| commentBlock |
	commentBlock := MarkdownCommentBlock 
		newFrom: (MarkdownLine newFrom: '<!-- MiniMetro', Character cr).
	commentBlock append: (MarkdownLine newFrom: 'is cool -->').
	self assert: 26 equals: commentBlock commentEnd