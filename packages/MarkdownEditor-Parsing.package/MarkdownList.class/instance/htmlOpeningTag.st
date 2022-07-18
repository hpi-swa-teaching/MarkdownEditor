html
htmlOpeningTag
	
	self isOrdered
		ifTrue: [^ '<ol start="', self startNumber ,'">', Character cr]
		ifFalse: [^ '<ul>', Character cr]