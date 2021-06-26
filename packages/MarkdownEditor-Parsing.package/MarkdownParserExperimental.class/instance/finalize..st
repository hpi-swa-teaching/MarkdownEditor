phase 2
finalize: block
	"DEPRECATED"
	| parent |
	parent := block container.
	block beClosed.
	block finalize: self state.
	self state tip: parent.
	