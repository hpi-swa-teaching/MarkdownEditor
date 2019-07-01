tests - extendability
testOpenerNotYetClosed

	| commentBlock |
	commentBlock := MarkdownCommentBlock newFrom: '<!--', Character cr.
	self deny: commentBlock isClosed