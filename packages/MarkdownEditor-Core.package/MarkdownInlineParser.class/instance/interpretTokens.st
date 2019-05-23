parsing
interpretTokens

	| currentToken |
	self tokens ifEmpty: [^ self].
	currentToken := self tokens first.
	[(currentToken isDelimiter and: [currentToken isCloser]) 
		ifTrue: [self 
			findOpenerFor: currentToken 
			ifFound: [:opener | currentToken := self process: opener and: currentToken]].
		currentToken = self tokens last
			ifFalse: [currentToken := self tokens after: currentToken]
			ifTrue: [^ self]] repeat