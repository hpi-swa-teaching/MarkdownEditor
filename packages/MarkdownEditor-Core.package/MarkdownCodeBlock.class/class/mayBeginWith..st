testing
mayBeginWith: aString

	^ (aString beginsWith: '    ') not
		and: [aString matchesRegex: ' *```+[^`]*']