applying
continue: aParsingState
	
	(aParsingState currentLine 
		matchesRegex: '\s{0,3}', self openingFence, self openingFence first, '*\s*')
	ifTrue: [aParsingState reduceCurrentLineTo: ''.
			self finalize: aParsingState. 
			self beClosed.
			aParsingState tip: self container.
			^ 2]
	ifFalse: [aParsingState reduceCurrentLineTo: 
			(StringUtil 
				removeNLeadingSpaces: self indention 
				from: aParsingState currentLine).
			^ 0]