instance creation
newFrom: aRawString

	^ self new
		content: aRawString;
		totalLength: aRawString size;
		handleWhiteSpaces;
		yourself