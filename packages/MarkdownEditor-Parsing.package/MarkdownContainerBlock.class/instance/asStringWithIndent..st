debugging
asStringWithIndent: aString

	^ (self children 
		inject: (aString, 'a', self class, ' range: (', self startPosition, ', ', self endPosition, ') with subelements: ', Character cr, aString, '{ ', Character cr) 
		into: [:text :child | text, (child asStringWithIndent: aString, '    '), ',', Character cr])
			,aString, '}'