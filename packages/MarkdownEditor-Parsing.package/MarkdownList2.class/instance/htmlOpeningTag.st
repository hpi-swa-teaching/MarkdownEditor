as yet unclassified
htmlOpeningTag
	
	self isOrdered
		ifTrue: [^ '<ol>', Character cr]
		ifFalse: [^ '<ul>', Character cr]