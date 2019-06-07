testing
matches: aString

	| lineWithoutBlanks infoStringCollection |
	lineWithoutBlanks := aString withBlanksTrimmed.
	infoStringCollection := lineWithoutBlanks subStrings: {$`}.
	^ (aString beginsWith: '    ') not
		and: [infoStringCollection size <= 1]
		and: [infoStringCollection size = 1 ==> [(lineWithoutBlanks endsWith: '`') not]]
		and: [lineWithoutBlanks beginsWith: '```']