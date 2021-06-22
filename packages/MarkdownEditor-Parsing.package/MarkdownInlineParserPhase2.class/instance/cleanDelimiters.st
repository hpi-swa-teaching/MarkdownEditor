clean up
cleanDelimiters

	self delimiters ifEmpty: [^ self].
	self areOnlyDifferentDelimiterTypesLeft
		ifTrue: [^self delimiters removeAll].
	self areAllRemainingDelimitersOnlyOpenerOrCloser
		ifTrue: [^ self delimiters removeAll].
	self delimiters size <= 1
		ifTrue: [^ self delimiters removeAll]
		ifFalse: [^ self delimiters first beNotPotentialCloser]