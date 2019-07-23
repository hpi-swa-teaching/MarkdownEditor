tests - extendability
testClosedCommentBlockIsNotExtendable

	| commentBlock |
	commentBlock := MarkdownCommentBlock 
		newFrom: (MarkdownLine newFrom: '<!-- Play MiniMetro', Character cr).
	commentBlock append: (MarkdownLine newFrom: 'today -->', Character cr).
	self deny: (commentBlock isExtendableWith: (MarkdownLine newFrom: 'today'))