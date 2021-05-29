converting
asText
	
	self text ifNil: [self text: self generateText].
	^ self text 