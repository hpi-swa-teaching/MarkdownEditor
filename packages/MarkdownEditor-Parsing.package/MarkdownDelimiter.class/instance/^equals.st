comparing
= anotherDelimiter

	^ self class = anotherDelimiter class
		and: [self type = anotherDelimiter type]
		and: [self count = anotherDelimiter count]
		and: [self isPotentialOpener = anotherDelimiter isPotentialOpener 
			and: [self isPotentialCloser = anotherDelimiter isPotentialCloser]]
		and: [self inlineIndex = anotherDelimiter inlineIndex]