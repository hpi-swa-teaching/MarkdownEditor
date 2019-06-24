testing
matches: aString
	
	^ (aString beginsWith: '    ') not
		and: [aString withBlanksTrimmed beginsWith: '<!--']
		and: [((aString includesSubstring: '-->') not)
			or: [(aString withBlanksTrimmed findString: '-->') >= 5]]