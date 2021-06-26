parsing
parseLine: aString
	
	self state
		oldTip: self state tip;
		container: self state document;
		currentLine: self state currentLine.
	self 
		consumeContinuationMarkers;
		lookForNewBlockStarts;
		processRemainderOfLine