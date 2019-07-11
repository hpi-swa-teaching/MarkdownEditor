tests - comment
testCommentEndOfClosedBlockFollowedByText

	| commentBlock |
	commentBlock := MarkdownCommentBlock 
		newFrom: (MarkdownLine newFrom: '<!-- MiniMetro', Character cr).
	commentBlock append: (MarkdownLine newFrom: 'is cool --> More Text').
	self assert: 26 equals: commentBlock commentEnd