accessing
lines

	^ Array streamContents: [:lines |
		self content lineIndicesDo: [:start :endWithoutDelimiters :end |
			| line |
			line := self content copyFrom: start to: end.
			lines nextPut: line]]