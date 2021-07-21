instance creation
createNew: aParsingState
		
	| newHeading |
	newHeading := ((self newWithOutClosingTagFrom: aParsingState currentLine) 
					ifNil: [self newWithClosingTagFrom: aParsingState currentLine])
						ifNil: [^ 0].
	newHeading 
		startPosition: aParsingState charPos;
		innerStartPosition: newHeading startPosition + (aParsingState currentLine findString: newHeading content) -1;
		content: (StringUtil unescape: {$#} in: newHeading content).
	aParsingState newBlock: newHeading.
	aParsingState newBlock innerLine: ''.
	^ 2