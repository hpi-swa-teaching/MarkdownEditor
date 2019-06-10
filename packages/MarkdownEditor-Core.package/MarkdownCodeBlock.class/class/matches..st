testing
matches: aString

	^ (aString beginsWith: '    ') not
		and: [aString matchesRegex: ' *```+[^`]*']