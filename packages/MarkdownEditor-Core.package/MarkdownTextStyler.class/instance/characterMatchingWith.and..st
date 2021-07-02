as yet unclassified
characterMatchingWith: aText and: anotherText

	| count |
	count := aText size min: anotherText size.
	1 to: count do: [:i | | char anotherChar |
		char := aText string at: i.
		anotherChar := anotherText string at: i.
		char = anotherChar
			ifFalse: [((char asString matchesRegex: '\S') and: [anotherChar asString matchesRegex: '\S'])
						ifFalse: [^ i - 1]]].
	^ count