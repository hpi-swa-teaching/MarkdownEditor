clickable
getAbsoluteUrlFromPath: aString 

	^(Url schemeNameForString: self path)
		ifNil: [self path asUrlRelativeTo: (FileDirectory forFileName: aString) asUrl]
		ifNotNil: [Url absoluteFromText: self path]