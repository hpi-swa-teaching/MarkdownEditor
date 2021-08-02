applying
finalize: aParsingState

	| endOfLineIndex |
	super finalize: aParsingState.
	endOfLineIndex := self content findFirst: [:char | char = Character cr]. 
	self content: (self content allButFirst: endOfLineIndex)