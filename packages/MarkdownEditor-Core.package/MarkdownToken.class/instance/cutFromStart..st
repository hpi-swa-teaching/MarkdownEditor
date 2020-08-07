attribute
cutFromStart: aLength

	| cutDelimiter |
	cutDelimiter :=self copyTokenFromStartTo: aLength.
	self 
		content: (self content last: self length - aLength);
		startPosition: self startPosition + aLength.
	
	^ cutDelimiter