parsing
parse: aString
	
	self state 
		document: MarkdownDocument new;
		tip: self state document;
		lastMatchedContainer: self state document.
		
	aString lineIndicesDo: [:start :endWithoutDelimiters :end |
		self parse: (aString copyFrom: start to: end)]