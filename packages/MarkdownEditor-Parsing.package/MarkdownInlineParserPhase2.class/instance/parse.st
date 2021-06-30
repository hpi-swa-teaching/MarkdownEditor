parse
parse

	self removeInvalidDelimiters.
	self delimiters
		ifNotEmpty: [self parseInline].	
	self inlineElements
		ifNotEmpty: [self inlineElements: (self cleanUp: self inlineElements)].
	^ self inlineElements