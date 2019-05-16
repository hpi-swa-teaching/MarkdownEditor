parsing
parse: aString

	self tokenize: aString.
	self interpretTokens.
	^ self attributes
	