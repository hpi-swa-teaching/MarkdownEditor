applying
applyOnLine: aString
	
	(aString matchesRegex: '\s{0,3}', self openingFence, self openingFence first, '*')
	ifTrue: [self beClosed]
	ifFalse: [self content 
					ifNotEmpty: [self content
						at: self content size 
						put: self content last, Character cr].
				self addLine: (StringUtil removeNLeadingSpaces: self indention from: aString)].
	^ ''