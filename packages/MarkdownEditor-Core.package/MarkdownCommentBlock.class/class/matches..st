testing
matches: aString
	
	^ (aString beginsWith: '    ') not
		and: [aString withBlanksTrimmed beginsWith: self openingTag]