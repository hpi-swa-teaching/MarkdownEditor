instance creation
createNew: aParsingState
		
	| newHeading |
	newHeading := ((self newWithOutClosingTagFrom: aParsingState currentLine) 
					ifNil: [self newWithClosingTagFrom: aParsingState currentLine])
						ifNil: [^ 0].
	newHeading startPosition: aParsingState charPos.
	aParsingState newBlock: newHeading.
	aParsingState newBlock innerLine: ''.
	^ 2