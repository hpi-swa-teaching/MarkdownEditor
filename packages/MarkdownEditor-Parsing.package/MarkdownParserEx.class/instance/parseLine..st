parsing
parseLine: aString
	
	| result |
	result := self consumeContinuationMarkersIn: aString.
	result := self lookForNewBlockStartsIn: result.
	result := self processRemainderOfLine: result.