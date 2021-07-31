text interaction
isMultilineSelection

	^ (self textMorph selection findString: Character cr asString startingAt: 0) isZero not