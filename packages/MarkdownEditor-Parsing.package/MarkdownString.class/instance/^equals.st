comparing
= anotherString

	^ (self class = anotherString class)
		and: [self content = anotherString content]