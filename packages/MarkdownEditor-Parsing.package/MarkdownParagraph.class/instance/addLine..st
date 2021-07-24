applying
addLine: aString

	self content: self content, (StringUtil removeOuterSpacesOf: aString).
	self innerStartPosition = 0
		ifTrue:[self innerStartPosition: self startPosition + (aString findString: self content) - 1]