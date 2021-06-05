as yet unclassified
removeNLeadingSpaces: aNumber from: aString

	| first |
	first := aString indexOfAnyOf: Character space startingAt: 1.
	first = first min: aNumber. 
	first = 0 ifTrue:[^ aString].
	^ aString copyFrom: first to: aString size
	