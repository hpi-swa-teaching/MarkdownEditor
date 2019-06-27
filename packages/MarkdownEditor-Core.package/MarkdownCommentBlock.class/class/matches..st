testing
matches: aString
	
	^ (aString beginsWith: '    ') not
		and: [aString withBlanksTrimmed beginsWith: self openingTag]
		and: [((aString includesSubstring: self closingTag))
			==> [(aString withBlanksTrimmed findString: self closingTag) > self openingTag size]]