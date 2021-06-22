parsing
processReferenceFrom: aRawString

	| balancedBracketCollection referenceType |
	balancedBracketCollection := self calculateBalancedBracketCollectionFrom: aRawString.
	(balancedBracketCollection isEmpty or: [(balancedBracketCollection last x = 1) not])
		ifTrue: [^ self processStringFrom: aRawString].

	referenceType := self delimiterManager decideReferenceTypeFrom: self previousChar.
	
	^ self process: balancedBracketCollection for: referenceType from: aRawString