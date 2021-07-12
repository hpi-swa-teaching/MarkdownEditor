text interaction
isMultilineSelection

	^ (self pluggableTextMorph textMorph selection findString: '', Character cr startingAt: 0) ~= 0