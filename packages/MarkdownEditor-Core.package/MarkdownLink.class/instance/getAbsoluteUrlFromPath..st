clickable
getAbsoluteUrlFromPath: aString 

	^(Url schemeNameForString: self url)
		ifNil: [self url asUrlRelativeTo: (FileDirectory forFileName: aString) asUrl]
		ifNotNil: [Url absoluteFromText: self url]

	
