applying
applyOnLine: aString

	| listItem |
	(aString matchesRegex: '\s*') 
		ifTrue: [self isLoose: true. ^ ''].
	(self children last applyOnLine: aString)
		ifNotNil: [^ aString].
	listItem := MarkdownListItem newFrom: aString.
	listItem ifNil: [^ nil].
	listItem listMarker ~= self listMarker ifTrue: [^ nil].
	self addItem: listItem.
	^ listItem innerLine.