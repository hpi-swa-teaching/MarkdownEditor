parsing
parseListMarker: aParsingState
	
	| matcher listData |
	listData := Dictionary new.
	listData at: #isOrdered put: false.
	listData at: #start put: nil.
	matcher := self orderedMarkerMatcher: aParsingState.
	(matcher matches: aParsingState currentLine)
		ifTrue: [listData at: #start put: (matcher subexpression: 3) asNumber.
				listData at: #isOrdered put: true]
		ifFalse: [matcher := self unorderdMarkerMatcher: aParsingState].
	(matcher matches: aParsingState currentLine)
		ifFalse: [^ nil].
	^ listData 
		at: #length put: (matcher subexpression: 2) size;
		at: #marker put: (matcher subexpression: 4);
		at: #remains put: (matcher subexpression: 5);
		yourself