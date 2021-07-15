helper
indexOfFirstCharInLineCorrespondingTo: anIndex

	^ ((self text string first: anIndex) 
		findLast: [:char | char = Character cr]) + 1