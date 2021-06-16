accessing
asStringWithIndent: aString

	^ (self children 
		inject: (aString, 'a', self class, ' with subelements: ', Character cr, aString, '{ ', Character cr) 
		into: [:text :child | text, (child asStringWithIndent: aString, '    '), ',', Character cr])
			,aString, '}'