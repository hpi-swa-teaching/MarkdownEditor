parsing
parse: aString
	self 
		clean;
		tokenize: aString;
		interpretTokens.
		Transcript show: self inlineElements; cr.
	^ self inlineElements
	