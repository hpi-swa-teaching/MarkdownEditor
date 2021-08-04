replacing
remove: aNumber LeadingSpacesFrom: aString

	| first |
	first := aString indexOfAnyOf: (CharacterSet withAll: {Character space}) complement startingAt: 1.
	first := first min: aNumber + 1. 
	first = 0 ifTrue:[^ aString].
	^ aString copyFrom: first to: aString size