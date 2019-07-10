accessing
rangesForSource: aString

	^ parser
		rangesIn: aString
		classOrMetaClass: self class
		workspace: nil
		environment: nil