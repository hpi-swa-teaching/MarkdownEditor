as yet unclassified
= anotherDelimiter

	^ (self type = anotherDelimiter type) 
		and: [self count = anotherDelimiter count]
		and: [self isPotentialOpener = anotherDelimiter isPotentialOpener]
		and: [self isPotentialCloser = anotherDelimiter isPotentialCloser]
		and: [self index = anotherDelimiter index]