as yet unclassified
applyOnLine: aString
	
	
	(aString matchesRegex: '\s{0,3}', self openingFence, self openingFence first, '*')
	ifTrue: [self isOpen 
		ifTrue: [self isOpen: false. ^ true] 
		ifFalse: [^false]]
	ifFalse: [self content: (self removeNLeadingSpaces: self indention from: aString). ^ true].