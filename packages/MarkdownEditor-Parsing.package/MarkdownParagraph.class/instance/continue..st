applying
continue: aParsingState
    
	aParsingState currentLine isAllSeparators ifTrue: [^ #failedMatch].
	^ #matched