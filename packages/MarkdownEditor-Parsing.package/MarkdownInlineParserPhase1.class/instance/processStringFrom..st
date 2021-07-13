parsing
processStringFrom: aRawString

	aRawString doWithIndex: 
		[:char :index | (index = 1)
			ifFalse: [(self markdownSpecialCharacters includes: char)
						ifTrue: [^ self processUpToSpecialCharacterAt: index with: aRawString]]].	
	self addToInlineElements: (MarkdownString newFrom: aRawString).
	^ ''