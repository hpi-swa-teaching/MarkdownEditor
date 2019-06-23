accessing
next: anInteger

	| nextCharacters endPosition |

	endPosition := position + anInteger min: readLimit.
	nextCharacters := collection copyFrom: position + 1 to: endPosition.
	(nextCharacters size + 1 = anInteger)
		"This method is copied from ReadStream and modified."
		ifTrue: [nextCharacters := nextCharacters padded: #right to: anInteger with: Character space].
	(nextCharacters size + 1 < anInteger)
		ifTrue: [Error signal: 'Not enough characters left'].
	position := endPosition.
	^ nextCharacters