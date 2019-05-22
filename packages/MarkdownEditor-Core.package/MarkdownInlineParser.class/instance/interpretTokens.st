parsing
interpretTokens

	| currentToken |
	self attributes: OrderedCollection new.
	self tokens ifEmpty: [^ self].
	currentToken := self tokens first.
	[true] whileTrue: [(currentToken isDelimiter and: [currentToken isCloser]) 
		ifTrue: [self findOpenerFor: currentToken 
				ifFound: [:opener |  | length |
					self attributes add: (currentToken attributeStartingAt: opener).
					length := currentToken attributeDelimiterLengthWith: opener.
					self cutOpener: opener to: length.
					currentToken := self cutCloser: currentToken to: length]].
		currentToken := self tokens 
			after: currentToken
			ifAbsent: [^ self]]