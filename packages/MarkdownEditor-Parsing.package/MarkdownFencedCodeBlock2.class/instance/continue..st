applying
continue: aParsingState
	
	
	(aParsingState matchesRegex: '\s{0,3}', self openingFence, self openingFence first, '*')
	ifTrue: [self finalize. 
		aParsingState tip: self container.
		^ 2]
	ifFalse: [aParsingState reduceCurrentLineTo: 
		(StringUtil 
			removeNLeadingSpaces: self indention 
			from: aParsingState currentLine).
		^ 0].