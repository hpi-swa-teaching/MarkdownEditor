attributes
cutFromEnd: aLength

	| cutDelimiter |
	cutDelimiter := self copy
							content: (self content last: aLength);
							position: self endPosition - aLength + 1;
							yourself.
	self content: (self content copyFrom: 1 to:  self endPosition - aLength).
	
	^ cutDelimiter