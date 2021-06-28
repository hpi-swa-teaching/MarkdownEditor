applying
continue: aParsingState
	
	
	(aParsingState matchesRegex: '\s{0,3}', self openingFence, self openingFence first, '*')
	ifTrue: [self finalize. 
		aParsingState tip: self container]
	ifFalse: [self content: 
				(self content = nil ifTrue: [''] ifFalse: [self content, Character cr]),
				(StringUtil removeNLeadingSpaces: self indention from: aParsingState)].
	^ ''