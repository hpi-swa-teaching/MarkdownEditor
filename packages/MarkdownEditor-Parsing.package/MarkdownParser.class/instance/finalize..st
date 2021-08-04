phase 2
finalize: aMarkdownBlock

	| parent |
	parent := aMarkdownBlock container.
	aMarkdownBlock beClosed.
	aMarkdownBlock finalize: self state.
	self state tip: parent