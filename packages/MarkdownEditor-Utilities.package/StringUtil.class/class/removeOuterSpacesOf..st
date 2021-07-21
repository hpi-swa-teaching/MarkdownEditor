replacing
removeOuterSpacesOf: aString

	| last first |
	last := aString findLast: [:c | c ~= Character space].
	last = 0 ifTrue: [^ ''].
	first := aString findFirst: [:c | c ~= Character space].
	first = 0 ifTrue: [^ ''].
	^ aString copyFrom: first to: last.
	

	