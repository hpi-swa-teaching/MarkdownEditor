applying
finalize: aParsingState
	
	super finalize: aParsingState.
	(self content lines) 
		ifNotEmpty: ["self info: (self content lines) first"]