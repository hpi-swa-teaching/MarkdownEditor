applying
finalize: aParsingState
	
	super finalize: aParsingState.
	self info 
		ifNotEmpty: [ | endOfLineIndex |
			endOfLineIndex := self content findFirst: [:char | char = Character cr]. 
			self content: (self content allButFirst: endOfLineIndex)]