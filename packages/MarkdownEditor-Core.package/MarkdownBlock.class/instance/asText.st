converting
asText
	
	self text ifNil: [self text: self generateText. self text addAttribute: (TextColor color: Color random)].
	^ self text 