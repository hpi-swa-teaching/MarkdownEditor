tests - extendability
testNormalClosingTag

	| commentBlock |
	commentBlock := MarkdownCommentBlock 
		newFrom: (MarkdownLine newFrom: '<!-- MiniMetro', Character cr).
	commentBlock append: (MarkdownLine newFrom: 'is great -->').
	self assert: commentBlock isClosed