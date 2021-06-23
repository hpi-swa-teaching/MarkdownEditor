parsing
consumeContinuationMarkersIn: aString

	self state currentLine: aString.
	self consumeMarkersWithBlock: self document.