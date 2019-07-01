tests - extendability
testClosedCommentBlockIsNotExtendable

	| commentBlock |
	commentBlock := MarkdownCommentBlock newFrom: '<!-- Play MiniMetro', Character cr.
	commentBlock append: 'today -->', Character cr.
	self deny: (commentBlock isExtendableWith: 'today')