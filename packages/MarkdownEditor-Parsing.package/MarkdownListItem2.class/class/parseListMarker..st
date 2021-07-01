as yet unclassified
parseListMarker: aParsingState
	
	| matcher length start isOrdered marker remains maxIndent|
	maxIndent := 3.
	aParsingState container class = MarkdownList2 ifTrue: [maxIndent := 1000].
	isOrdered := false.
	matcher := RxMatcher forString: '(\s{0,', maxIndent,'}([0-9]{1,9})(\.|\)))(.*)'.
	(matcher matches: aParsingState currentLine)
	ifTrue: [start := (matcher subexpressions: 3) asNumber.
		isOrdered := true]
	ifFalse: [matcher := RxMatcher forString: '(\s{0,', maxIndent,'}((-|\+|\*)))(.*)'].
	(matcher matches: aParsingState currentLine)
	ifFalse: [^ nil].
	length := (matcher subexpressions: 2) first size.
	marker := (matcher subexpressions: 4) first.
	remains := (matcher subexpressions: 5) first.
	^ {isOrdered. start. length. marker. remains}
		