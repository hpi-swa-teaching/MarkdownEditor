debugging
asStringWithIndent: aString

	^ aString, 'a', self class, ' range: (', self startPosition, ', ', self endPosition, ') with content: ', self content