accessing
next: anInteger

	| nextCharacters endPosition |

	endPosition := position + anInteger  min:  readLimit.
	nextCharacters := collection copyFrom: position + 1 to: endPosition.
	(nextCharacters size ~= anInteger) 
		"This method is copied from ReadStream and patched."
		ifTrue: [nextCharacters := nextCharacters padded: #right to: anInteger with: Character space].
	position := endPosition.
	^ nextCharacters