tests - comment
testCommentEndOfAutoClosedBlock

	| commentBlock |
	commentBlock := MarkdownCommentBlock 
		newFrom: (MarkdownLine newFrom: '<!-- MiniMetro').
	self assert: 14 equals: commentBlock commentEnd