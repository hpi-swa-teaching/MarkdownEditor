new inline parsing
processStringFrom: aRawString

	aRawString doWithIndex: 
		[:char :index | (index = 1)
			ifFalse: [(self markdownSpecialCharacters includes: char)
						ifTrue: [self inlineContainer 
									add: (MarkdownString2 newFrom: (aRawString copyFrom: 1 to: index-1)).
								^ aRawString copyFrom: index to: aRawString size]]].
				
	self inlineContainer
		add: (MarkdownString2 newFrom: aRawString).
	^ ''