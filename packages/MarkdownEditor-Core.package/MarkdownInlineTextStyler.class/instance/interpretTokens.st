parsing
interpretTokens

	| currentToken |
	self tokens ifEmpty: [^ self].
	currentToken := self tokens first.
	[(currentToken isDelimiter and: [currentToken isCloser]) 
		ifTrue: [self 
			findOpenerFor: currentToken 
			ifFound: [:opener| | token |
				token := self process: opener and: currentToken.
				token ifNotNil: [currentToken := token]]].
	currentToken = self tokens last
		ifFalse: [currentToken := self tokens after: currentToken]
		ifTrue: [^ self]] repeat