parsing
processUpToSpecialCharacterAt: anIndex with: aRawString

	self addStringFrom: (aRawString copyFrom: 1 to: anIndex - 1).
	^ aRawString copyFrom: anIndex to: aRawString size