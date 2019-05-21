parsing
interpretTokens

	| currentToken |
	self attributes: OrderedCollection new.
	currentToken := self tokens first.
	[true] whileTrue: [(currentToken isDelimiter and: [currentToken isCloser]) 
		ifTrue: [self findOpenerFor: currentToken 
				ifFound: [:opener |  | length |
					self attributes add: (currentToken attributeStartingAt: opener).
					length := currentToken attributeDelimiterLengthWith: opener.
					opener length > length 
						ifTrue: [self tokens 
							add: (opener cutFromEnd: length) asStringToken 
							after: opener]
						ifFalse: [self tokens at: (self tokens indexOf: opener) put: opener asStringToken].
					currentToken length > length 
						ifTrue: [| cut | 
							cut := (currentToken cutFromStart: length) asStringToken.
							self tokens 
								add: cut 
								before: currentToken.
							currentToken := cut]
						ifFalse: [currentToken := self tokens at: (self tokens indexOf: currentToken) put: currentToken asStringToken]]].
		currentToken := self tokens 
			after: currentToken
			ifAbsent: [^ self]]