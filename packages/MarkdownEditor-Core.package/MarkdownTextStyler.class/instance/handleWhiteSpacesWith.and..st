helper
handleWhiteSpacesWith: aGroundTruthText and: aComparingText

	| lastSameCharacters text |
	self assert: aGroundTruthText size > aComparingText size.
	text := aComparingText.
	[lastSameCharacters := self characterMatchingWith: aGroundTruthText and: text.
	lastSameCharacters = aGroundTruthText size
		ifTrue: [^ text]. 
	text := self insert: (aGroundTruthText at: lastSameCharacters + 1) 
		at: lastSameCharacters
		in: text.
	] doWhileFalse: [self sameTextFrom: text and: aGroundTruthText].
	self assert: aGroundTruthText size = text size.
	^ text
	