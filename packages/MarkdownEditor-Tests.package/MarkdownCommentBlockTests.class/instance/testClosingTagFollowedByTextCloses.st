tests - extendability
testClosingTagFollowedByTextCloses

	| commentBlock |
	commentBlock := MarkdownCommentBlock 
		newFrom: (MarkdownLine newFrom: '<!-- MiniMetro', Character cr).
	commentBlock append: (MarkdownLine newFrom: 'is great --> more Text').
	self assert: commentBlock isClosed