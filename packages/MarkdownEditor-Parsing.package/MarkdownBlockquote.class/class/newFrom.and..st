instance creation
newFrom: aRegExMatcher and: aParsingState

	^ self new
		startPosition: aParsingState charPos;
		innerLine: (aRegExMatcher subexpression: 2);
		yourself