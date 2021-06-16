parsing
processStringFrom: aRawString

	aRawString doWithIndex: 
		[:char :index | (index = 1)
			ifFalse: [(self markdownSpecialCharacters includes: char)
						ifTrue: [self addStringFrom: (aRawString copyFrom: 1 to: index-1).
								^ aRawString copyFrom: index to: aRawString size]]].	
	self addStringFrom: aRawString.
	^ ''