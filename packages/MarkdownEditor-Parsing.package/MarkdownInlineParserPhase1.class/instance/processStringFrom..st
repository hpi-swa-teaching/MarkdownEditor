parsing
processStringFrom: aRawString

	aRawString doWithIndex: 
		[:char :index | (index = 1)
			ifFalse: [(self markdownSpecialCharacters includes: char)
						ifTrue: [^ self processDelimitersAsStringFrom: aRawString with: index]]].	
	self addStringFrom: aRawString.
	^ ''