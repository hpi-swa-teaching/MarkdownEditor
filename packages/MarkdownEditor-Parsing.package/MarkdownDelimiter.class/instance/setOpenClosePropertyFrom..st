accessing
setOpenClosePropertyFrom: aString

	(aString first asString matchesRegex: '\S')
		ifTrue: [self bePotentialCloser].
	(aString last asString matchesRegex: '\S')
		ifTrue: [self bePotentialOpener]