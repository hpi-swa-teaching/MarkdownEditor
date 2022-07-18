applying
adaptToDocumentWith: aParsingState
	
	((self matchesList: aParsingState container) not or: [
	aParsingState tip class ~= MarkdownList])
	ifTrue: [aParsingState tip: 
		(aParsingState tip addChild: MarkdownList new withState: aParsingState).
		self configureNewListIn: aParsingState].
	aParsingState tip indentation: self indentation.
	aParsingState tip addChild: self withState: aParsingState.
	aParsingState tip: self.
	aParsingState reduceCurrentLineTo: self innerLine