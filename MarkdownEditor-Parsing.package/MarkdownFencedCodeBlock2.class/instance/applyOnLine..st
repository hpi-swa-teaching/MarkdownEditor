as yet unclassified
applyOnLine: aString
	
	
	(aString matchesRegex: '\s{0,3}', self openingFence, self openingFence first, '*')
	ifFalse:[ self removeNLeadingSpaces: self indention from: aString]