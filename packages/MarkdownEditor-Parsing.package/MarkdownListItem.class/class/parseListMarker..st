parsing
parseListMarker: aParsingState
	
	| matcher listData |
	listData := Dictionary new.
	listData at: #isOrdered put: false.
	listData at: #start put: nil.
	matcher := self orderedMarkerMatcher: aParsingState.
	(matcher matches: aParsingState currentLine)
		ifTrue: [listData at: #start put: (matcher subexpressions: 3) first asNumber.
				listData at: #isOrdered put: true]
		ifFalse: [matcher := self unorderdMarkerMatcher: aParsingState].
	(matcher matches: aParsingState currentLine)
		ifFalse: [^ nil].
	^ listData 
		at: #length put: (matcher subexpressions: 2) first size;
		at: #marker put: (matcher subexpressions: 4) first;
		at: #remains put: (matcher subexpressions: 5) first;
		yourself