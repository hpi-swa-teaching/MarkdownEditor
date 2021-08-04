instance creation
newFrom: aParsingState

	^ self new
		startPosition: aParsingState charPos;
		innerLine: '';
		yourself