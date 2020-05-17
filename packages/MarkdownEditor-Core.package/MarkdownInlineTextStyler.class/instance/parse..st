parsing
parse: aString
	
	self 
		clean;
		tokenize: aString;
		interpretTokens.
	Transcript show: emphases; cr.
	^ self emphases
	