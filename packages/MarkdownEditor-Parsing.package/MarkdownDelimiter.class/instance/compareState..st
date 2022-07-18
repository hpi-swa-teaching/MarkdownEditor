comparing
compareState: anotherDelimiter

	^ self count = anotherDelimiter count
		and: [ 
			self isValid = anotherDelimiter isValid
		and: [ 
			self type = anotherDelimiter type
		and: [ 
			self inlineIndex = anotherDelimiter inlineIndex]]]
	