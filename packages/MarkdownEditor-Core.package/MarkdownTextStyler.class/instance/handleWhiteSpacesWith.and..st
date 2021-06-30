helper
handleWhiteSpacesWith: aGroundTruthText and: aComparingText

	| lastSameCharacters text |
	self assert: aGroundTruthText size > aComparingText size.
	text := aComparingText.
	[lastSameCharacters := aGroundTruthText string charactersExactlyMatching: text string.
	text := self insert: (aGroundTruthText at: lastSameCharacters + 1) 
		at: lastSameCharacters
		in: text.
	] doWhileFalse: [text = aGroundTruthText].
	^ text
	