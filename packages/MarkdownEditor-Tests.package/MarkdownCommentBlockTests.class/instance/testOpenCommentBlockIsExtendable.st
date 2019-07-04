tests - extendability
testOpenCommentBlockIsExtendable

	| commentBlock |
	commentBlock := MarkdownCommentBlock 
		newFrom: (MarkdownLine newFrom: '<!-- Play MiniMetro', Character cr).
	self assert: (commentBlock isExtendableWith: (MarkdownLine newFrom: 'today'))