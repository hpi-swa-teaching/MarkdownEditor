applying
continue: aParsingState
    
	aParsingState currentLine isAllSeparators ifTrue: [^1].
	^ 0