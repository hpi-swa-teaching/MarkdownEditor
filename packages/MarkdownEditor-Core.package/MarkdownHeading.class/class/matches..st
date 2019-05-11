testing
matches: aString

	| chunks |
	chunks := aString subStrings: {Character space. Character cr}.
	^ (aString beginsWith: '    ') not 
		and: [chunks notEmpty] 
		and: [chunks first allSatisfy: [:char | char = $#]] 
		and: [chunks first size between: 1 and: 6] 