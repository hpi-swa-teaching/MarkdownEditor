clean up
removeInvalidDelimiters

	| invalidDelimiters |
	invalidDelimiters := self delimiters select: [:delimiter | delimiter type = $~ and: [delimiter count < 2]].
	self delimiters removeAllFromCollection: invalidDelimiters