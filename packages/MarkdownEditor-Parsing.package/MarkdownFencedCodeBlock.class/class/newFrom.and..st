instance creation
newFrom: aRegExMatcher and: aParsingState

	^ self new
		indentation: ((aRegExMatcher subexpression: 3) size);
		openingFence: (aRegExMatcher subexpression: 4);
		startPosition: aParsingState charPos;
		info: (aRegExMatcher subexpression: 8) withBlanksTrimmed;
		innerStartPosition: 
			aParsingState charPos 
			+ (aRegExMatcher subexpression: 7) size 
			+ (aRegExMatcher subexpression: 4) size;
		innerLine: (aRegExMatcher subexpression: 7);
		yourself