comparing
= anotherDelimiter

	self == anotherDelimiter
		ifTrue: [ ^ true ].
	self class = anotherDelimiter class
		ifFalse: [ ^ false ].
	^ self isPotentialOpener = anotherDelimiter isPotentialOpener
		and: [ 
			self isOriginalOpenerAndCloser = anotherDelimiter isOriginalOpenerAndCloser
		and: [ 
			self count = anotherDelimiter count
		and: [ 
			self isValid = anotherDelimiter isValid
		and: [ 
			self type = anotherDelimiter type
		and: [ 
			self inlineIndex = anotherDelimiter inlineIndex 
		and: [ 
			self isPotentialCloser = anotherDelimiter isPotentialCloser ] ] ] ] ] ]