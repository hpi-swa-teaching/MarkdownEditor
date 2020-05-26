attribute
cutFromEnd: aLength

	| cutDelimiter |
	cutDelimiter := self copy
							content: (self content last: aLength);
							startPosition: self endPosition - aLength + 1;
							yourself.
	self content: (self content first: self length - aLength).
	
	^ cutDelimiter