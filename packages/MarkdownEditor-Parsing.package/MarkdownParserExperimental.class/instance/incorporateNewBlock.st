phase 2
incorporateNewBlock

	self closeUnmatchedBlocks.
	self state newBlock adaptToDocumentWith: self state.
	self state container: self state tip.
	