applying
applyOnLine: aString
	
	(aString matchesRegex: '\s{0,3}', self openingFence, self openingFence first, '*\s*')
	ifTrue: [self closingFence: aString. self beClosed]
	ifFalse: [self content: 
				(self content = nil ifTrue: [''] ifFalse: [self content, Character cr]),
				(StringUtil removeNLeadingSpaces: self indention from: aString)].
	^ ''