tests - extendability
testOpenerNotYetClosed

	| commentBlock |
	commentBlock := MarkdownCommentBlock 
		newFrom: (MarkdownLine newFrom: '<!--', Character cr).
	self deny: commentBlock isClosed