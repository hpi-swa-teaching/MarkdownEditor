helpers - reference
findCloserIndexFrom: aRawString with: aBracketPair and: anEnclosedLink andAddWith: aLinkType
	
	| endLinkIndex |
	endLinkIndex := self findCloserIndexFrom: anEnclosedLink and: aBracketPair.
	self addReferenceFrom: (aRawString copyFrom: aBracketPair x to: endLinkIndex) with: aLinkType.
	^ aRawString copyFrom: endLinkIndex + 1 to: aRawString size

	