applying
continue: aParsingState
	
	(aParsingState currentLine 
		matchesRegex: '\s{0,3}', self openingFence, self openingFence first, '*\s*')
			ifTrue: [aParsingState reduceCurrentLineTo: ''.
					self finalize: aParsingState. 
					self beClosed.
					aParsingState tip: self container.
					^ #endOfLine]
			ifFalse: [aParsingState reduceCurrentLineTo: 
						(MarkdownStringUtil 
							remove: self indentation 
							LeadingSpacesFrom: aParsingState currentLine).
					^ #matched]