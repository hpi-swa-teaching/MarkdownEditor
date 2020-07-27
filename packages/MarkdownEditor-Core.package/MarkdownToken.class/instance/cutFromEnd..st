attribute
cutFromEnd: aLength

	| cutDelimiter |
	cutDelimiter := self copyTokenToEndWithLength: aLength.
	self content: (self content first: self length - aLength).
	
	^ cutDelimiter