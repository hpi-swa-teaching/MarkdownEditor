tests - extendability
testClosingTagInFirstLineCloses

	| commentBlock |
	commentBlock := MarkdownCommentBlock 
		newFrom: (MarkdownLine newFrom: '<!-- one-line comment -->', Character cr).
	self assert: commentBlock isClosed