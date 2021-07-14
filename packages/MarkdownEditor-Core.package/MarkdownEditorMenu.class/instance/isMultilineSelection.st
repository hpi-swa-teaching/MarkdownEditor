text interaction
isMultilineSelection

	^ (self pluggableTextMorph textMorph selection findString: Character cr asString startingAt: 0) isZero not