parsing
parseLine: aString

	self state
		oldTip: self state tip;
		container: self state document;
		currentLine: aString.
	self consumeContinuationMarkers