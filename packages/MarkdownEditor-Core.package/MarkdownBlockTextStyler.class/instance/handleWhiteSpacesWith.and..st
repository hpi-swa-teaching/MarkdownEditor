as yet unclassified
handleWhiteSpacesWith: aText and: aComparingText

	| difference |
	self assert: aText size > aComparingText size.
	difference := aText size - aComparingText size.
	^ aComparingText, (Text new: difference)