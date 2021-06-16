as yet unclassified
setOpenClosePropertyFrom: aString

	| firstChar lastChar |
	firstChar := aString first asString.
	lastChar := aString last asString.
	
	(firstChar matchesRegex: '[^\s]')
		ifTrue: [self bePotentialCloser].
	(lastChar matchesRegex: '[^\s]')
		ifTrue: [self bePotentialOpener]