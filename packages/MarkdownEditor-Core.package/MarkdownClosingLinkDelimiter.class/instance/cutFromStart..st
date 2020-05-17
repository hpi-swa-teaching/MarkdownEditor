attribute
cutFromStart: aLength

	| cutDelimiter |
	cutDelimiter := self copy
							content: (self content first: aLength);
							yourself.
	self 
		content: (self content last: self length - aLength);
		startPosition: self startPosition + aLength.
	
	^ cutDelimiter