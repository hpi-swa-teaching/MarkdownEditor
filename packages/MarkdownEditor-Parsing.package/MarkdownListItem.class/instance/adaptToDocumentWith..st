accessing
adaptToDocumentWith: aParsingState
	
	(self matchesList: aParsingState container) not & 
	(aParsingState tip class ~= MarkdownList)
	ifTrue: [aParsingState tip: 
		(aParsingState tip addChild: MarkdownList new withState: aParsingState).
		aParsingState tip
			indention: self indention;
			isOrdered: self isOrdered;
			listMarker: self listMarker;
			startNumber: self number;
			startPosition: self startPosition].
	aParsingState tip addChild: self withState: aParsingState.
	aParsingState tip: self.
	aParsingState reduceCurrentLineTo: self innerLine.