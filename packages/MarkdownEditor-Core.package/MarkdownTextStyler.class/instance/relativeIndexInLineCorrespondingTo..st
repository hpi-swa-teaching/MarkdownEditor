helper
relativeIndexInLineCorrespondingTo: anIndex

	^ anIndex - ((self text asString first: anIndex) 
		findLast: [:char | char = Character cr])