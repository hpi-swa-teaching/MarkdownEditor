parsing
interpretTokens

	| currentToken |
	self attributes: OrderedCollection new.
	currentToken := self tokens first.
	[true] whileTrue: [(currentToken isDelimiter and: [currentToken isCloser]) 
		ifTrue: [self findOpenerFor: currentToken 
				ifFound: [:opener | | attribute length |
					attribute := currentToken attributeStartingAt: opener.
					self attributes add: attribute.
					attribute isBold 
						ifTrue: [length := 2]
						ifFalse: [length := 1].
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