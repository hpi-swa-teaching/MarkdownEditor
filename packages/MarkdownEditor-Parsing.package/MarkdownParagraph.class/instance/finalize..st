applying
finalize: aParsingState

	super finalize: aParsingState.
	self content: self content withBlanksTrimmed