helper
areAllRemainingDelimitersOnlyOpenerOrCloser

	(self delimiters anySatisfy: [:del | del isPotentialOpener and: [del isPotentialCloser]])
		ifTrue: [^ false].
	(self delimiters allSatisfy: [:del | del isPotentialCloser])
		ifTrue: [^ true].
	(self delimiters allSatisfy: [:del | del isPotentialOpener])
		ifTrue: [^ true].
	^ false