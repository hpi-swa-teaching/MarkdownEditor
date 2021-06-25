as yet unclassified
htmlClosingTag
	
	self isOrdered
		ifTrue: [^ '</ol>', Character cr]
		ifFalse: [^ '</ul>', Character cr]