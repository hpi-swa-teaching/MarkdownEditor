instance creation
createNew: aParsingState
		
		| newHeading |
		newHeading := ((self newWithOutClosingTagFrom: aParsingState currentLine) 
			ifNil: [self newWithClosingTagFrom: aParsingState currentLine])
		ifNil: [^ 0].
		aParsingState 
			newBlock: newHeading;
			reduceCurrentLineTo: ''.
		^ 2.
		
		
		