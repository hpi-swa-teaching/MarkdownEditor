helper
cleanDelimiters

	self delimiters size <= 1
		ifTrue: [self delimiters removeAll]
		ifFalse: [self delimiters first beNotPotentialCloser]