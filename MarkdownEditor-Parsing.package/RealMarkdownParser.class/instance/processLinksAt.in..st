parsing - inline
processLinksAt: anOrderdCollectionOfPositions in: aRawString 

	anOrderdCollectionOfPositions
		doWithIndex: [:linkRange :index| | link |
			link := aRawString copyFrom: (linkRange first) to: (linkRange last).
			self links add: (self createLinkFrom: link)]