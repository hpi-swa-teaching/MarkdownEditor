parsing
parse: aString
	
	self state 
		document: MarkdownDocument new;
		tip: self state document;
		lastMatchedContainer: self state document.
		
	aString lineIndicesDo: [:start :endWithoutDelimiters :end |
		self parseLine: (aString copyFrom: start to: end)].
	
	[self finalize: self tip] whileTrue: [self tip notNil]