tests - conversion
testOpeningLinkDelimiterAsString

	| token convertedToken |
	token := MarkdownOpeningExtendedLinkDelimiter newFor: '<' at: 1.
	convertedToken := token asStringToken.
	
	self assert: (convertedToken isKindOf: MarkdownString).
	self assert: token content equals: convertedToken content.
	self assert: token startPosition equals: convertedToken startPosition