helpers - reference
processPossible: aReferenceType with: aBracketPair from: aRawString and: anEnclosedLink

	| endLinkIndex |
	endLinkIndex := self findCloserIndexFrom: anEnclosedLink and: aBracketPair.
	(self isCodeSpanPresentIn: aRawString)
		ifTrue: [^ self proofPossibleCodeSpanFrom: aRawString]
		ifFalse: [self addReferenceFrom: (aRawString copyFrom: aBracketPair x to: endLinkIndex) with: aReferenceType.
			^ aRawString copyFrom: endLinkIndex + 1 to: aRawString size]