applying
configureNewListIn: aParsingState
	
		aParsingState tip
			indentation: self indentation;
			copyOrderedState: self isOrdered;
			listMarker: self listMarker;
			startNumber: self number;
			startPosition: self startPosition