tests - extendability
testOpenCommentBlockIsExtendable

	| commentBlock |
	commentBlock := MarkdownCommentBlock newFrom: '<!-- Play MiniMetro', Character cr.
	self assert: (commentBlock isExtendableWith: 'today')