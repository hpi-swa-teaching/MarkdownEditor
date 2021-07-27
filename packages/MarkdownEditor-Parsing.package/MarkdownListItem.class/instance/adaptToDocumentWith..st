applying
adaptToDocumentWith: aParsingState
	
	((self matchesList: aParsingState container) not or: [
	aParsingState tip class ~= MarkdownList])
	ifTrue: [aParsingState tip: 
		(aParsingState tip addChild: MarkdownList new withState: aParsingState).
		aParsingState tip
			indentation: self indentation;
			isOrdered: self isOrdered;
			listMarker: self listMarker;
			startNumber: self number;
			startPosition: self startPosition].
	aParsingState tip addChild: self withState: aParsingState.
	aParsingState tip: self.
	aParsingState reduceCurrentLineTo: self innerLine