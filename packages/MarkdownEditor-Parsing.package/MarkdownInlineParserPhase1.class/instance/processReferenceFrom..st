parsing
processReferenceFrom: aRawString

	| balancedBracketCollection referenceType |
	
	referenceType := self decideReferenceType.
	balancedBracketCollection := self calculateBalancedBracketCollectionFrom: aRawString.
	(balancedBracketCollection isEmpty or: [(self isOpenBracketAtOneFrom: balancedBracketCollection last) not])
		ifTrue: [^ self processStringFrom: aRawString].
	^ self process: balancedBracketCollection for: referenceType from: aRawString