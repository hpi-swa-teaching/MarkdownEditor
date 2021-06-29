as yet unclassified
handleWhiteSpacesWith: aGroundTruthText and: aComparingText

	| endOfSameCharacters text |
	self assert: aGroundTruthText size > aComparingText size.
	text := aComparingText.
	[endOfSameCharacters := aGroundTruthText string charactersExactlyMatching: text string.
	text := (text copyFrom: 1 to: endOfSameCharacters), 
		(aGroundTruthText at: endOfSameCharacters + 1) asText,
		(text copyFrom: endOfSameCharacters + 1 to: text size). 
	] doWhileFalse: [text = aGroundTruthText].
	^ text
	