attributes
cutFromStart: aLength

	| cutDelimiter |
	cutDelimiter := self copy
							content: (self content copyFrom: 1 to: aLength);
							yourself.
	self 
		content: (self content last: self length - aLength);
		position: self position + aLength.
	
	^ cutDelimiter