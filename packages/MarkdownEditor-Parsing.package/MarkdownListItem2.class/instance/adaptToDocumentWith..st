accessing
adaptToDocumentWith: aParsingState

	(self matchesList: aParsingState container) & 
	aParsingState tip class ~= MarkdownList2
	ifTrue: [aParsingState tip: 
		(aParsingState tip addChild: MarkdownList2 new).
		aParsingState tip
			indention: self indention;
			isOrdered: self isOrdered;
			listMarker: self listMarker;
			startNumber: self number].
	aParsingState tip addChild: self.
	aParsingState tip: self.