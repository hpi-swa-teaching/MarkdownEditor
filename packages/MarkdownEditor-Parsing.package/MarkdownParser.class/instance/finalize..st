phase 2
finalize: block

	| parent |
	parent := block container.
	block beClosed.
	block finalize: self state.
	self state tip: parent