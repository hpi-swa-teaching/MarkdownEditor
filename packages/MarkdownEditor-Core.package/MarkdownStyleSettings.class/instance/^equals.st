comparing
= anObject

	self == anObject ifTrue: [ ^ true ].
	self species == anObject species ifFalse: [ ^ false ].
	^ self fontSizes = anObject fontSizes and: [self fontColors = anObject fontColors]