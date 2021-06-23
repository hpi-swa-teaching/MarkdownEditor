parsing
parse: aString
	
	aString lineIndicesDo: [:start :endWithoutDelimiters :end |
		self state allBlocksClosed: false.
		self parse: (aString copyFrom: start to: end)]