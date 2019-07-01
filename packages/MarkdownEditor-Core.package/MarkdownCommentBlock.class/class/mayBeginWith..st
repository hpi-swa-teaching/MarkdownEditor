testing
mayBeginWith: aString
	
	^ (aString beginsWith: '    ') not
		and: [aString withBlanksTrimmed beginsWith: self openingTag]