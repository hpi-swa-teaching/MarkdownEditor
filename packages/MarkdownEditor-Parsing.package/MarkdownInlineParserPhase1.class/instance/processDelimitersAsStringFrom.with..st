parsing
processDelimitersAsStringFrom: aRawString with: anIndex

	self addStringFrom: (aRawString copyFrom: 1 to: anIndex - 1).
	^ aRawString copyFrom: anIndex to: aRawString size