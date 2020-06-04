as yet unclassified
= anObject

	self == anObject ifTrue: [ ^ true ].
	self species == anObject species ifFalse: [ ^ false ].
	^ self headingFontSizes = anObject headingFontSizes