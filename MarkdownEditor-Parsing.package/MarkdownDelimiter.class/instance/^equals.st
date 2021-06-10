accessing
= anotherDelimiter

	^ (self type = anotherDelimiter type) 
		and: [self count = anotherDelimiter count]
		and: [self index = anotherDelimiter index]