parsing
parse: aString
	
	self 
		clean;
		tokenize: aString;
		interpretTokens.
	^ self emphases
	