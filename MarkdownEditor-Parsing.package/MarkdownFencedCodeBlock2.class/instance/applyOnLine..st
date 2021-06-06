as yet unclassified
applyOnLine: aString
	
	
	(aString matchesRegex: '\s{0,3}', self openingFence, self openingFence first, '*')
	ifTrue: [self isOpen: false]
	ifFalse: [self content: 
				(self content = nil ifTrue: [''] ifFalse: [self content, Character cr]),
				(StringUtil removeNLeadingSpaces: self indention from: aString)].
	^ true