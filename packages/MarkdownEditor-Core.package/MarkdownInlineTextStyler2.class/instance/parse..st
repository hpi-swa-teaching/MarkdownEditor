parsing2
parse: aString
	self 
		clean;
		tokenize: aString;
		interpretTokens.
	^ self inlineElements
	