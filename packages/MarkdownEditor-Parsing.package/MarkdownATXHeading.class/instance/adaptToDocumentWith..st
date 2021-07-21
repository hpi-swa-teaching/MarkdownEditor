applying
adaptToDocumentWith: aParsingState

	aParsingState tip addChild: self withState: aParsingState.
	aParsingState tip: self.
	aParsingState reduceCurrentLineTo: self innerLine.