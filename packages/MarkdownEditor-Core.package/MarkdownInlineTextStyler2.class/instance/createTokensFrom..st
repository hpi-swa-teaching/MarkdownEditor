parsing - tokenization
createTokensFrom: aString

	aString withIndexDo: [:character :position |
		(self tokens notEmpty and: [self tokens last isExtendableWith: character])
			ifTrue: [self tokens last append: character]
			ifFalse: [self tokens add: (self tokenFor: character at: position)]].
		
	self content: aString