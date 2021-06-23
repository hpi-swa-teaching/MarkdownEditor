parsing
processReferenceFrom: aRawString

	| balancedBracketCollection referenceType |
	
	referenceType := self delimiterManager decideReferenceTypeFrom: self previousChar.
	self halt.
	balancedBracketCollection := self calculateBalancedBracketCollectionFrom: aRawString.
	(balancedBracketCollection isEmpty or: [(balancedBracketCollection last x = 1) not])
		ifTrue: [^ self processStringFrom: aRawString].

	
	
	^ self process: balancedBracketCollection for: referenceType from: aRawString