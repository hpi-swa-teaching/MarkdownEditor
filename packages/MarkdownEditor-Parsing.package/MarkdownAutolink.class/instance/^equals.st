comparing
= aContainerBlock

	^ self class = aContainerBlock class
		and: [self path = aContainerBlock path]
		and: [self isEmail = aContainerBlock isEmail]