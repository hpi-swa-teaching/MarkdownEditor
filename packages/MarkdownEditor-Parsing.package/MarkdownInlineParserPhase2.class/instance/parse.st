parse
parse

	self delimiters
		ifNotEmpty: [self parseInline].	
	self inlineElements
		ifNotEmpty: [self inlineElements: (self cleanUp: self inlineElements)]