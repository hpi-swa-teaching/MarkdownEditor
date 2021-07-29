comparing
= anotherDelimiter

	self == anotherDelimiter
		ifTrue: [^ true].
	self class = anotherDelimiter class
		ifFalse: [^ false].
	^ (self compareState: anotherDelimiter)
		and: [
			self comparePotentialOpenerAndCloser: anotherDelimiter]