accessing
lastChild
	
	self children ifEmpty: [^nil].
	^ self children last.