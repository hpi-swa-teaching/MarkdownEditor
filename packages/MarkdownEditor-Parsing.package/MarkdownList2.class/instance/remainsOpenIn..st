as yet unclassified
remainsOpenIn: aString

	| listItem |
	(aString matchesRegex: '\s*') 
		ifTrue: [self isLoose: true. ^ ''].
	listItem := MarkdownListItem2 newFrom: aString.
	listItem ifNil: [^ nil].
	listItem listMarker ~= self listMarker ifTrue: [^ nil].
	self addItem: listItem.
	^ listItem innerLine.