parsing
processUpToSpecialCharacterAt: anIndex with: aRawString

	self addToInlineElements:
		(MarkdownString newFrom: 
			(aRawString copyFrom: 1 to: anIndex - 1)).
	^ aRawString allButFirst: anIndex - 1