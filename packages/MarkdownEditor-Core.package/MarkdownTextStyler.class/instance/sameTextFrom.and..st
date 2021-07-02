as yet unclassified
sameTextFrom: aText and: anotherText

	| count |
	aText size = anotherText size
		ifFalse: [^ false].
	count := aText size min: anotherText size.
	1 to: count do: [:i | | char anotherChar |
		char := aText string at: i.
		anotherChar := anotherText string at: i.
		char = anotherChar
			ifFalse: [((char asString matchesRegex: '\S') and: [anotherChar asString matchesRegex: '\S'])
						ifFalse: [^ false]]].
	^ true
	