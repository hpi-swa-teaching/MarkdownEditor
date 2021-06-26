parsing
processReferenceFrom: aRawString

	| balancedBracketCollection referenceType |
	
	referenceType := self decideReferenceType.
	balancedBracketCollection := self calculateBalancedBracketCollectionFrom: aRawString.
	(balancedBracketCollection isEmpty "or: [(self isOpenBracketAtOneFrom: balancedBracketCollection last) not]")
		ifTrue: [^ self processStringFrom: aRawString].
	referenceType = MarkdownLink2
		ifTrue: [^ self processLink: balancedBracketCollection from: aRawString]
		ifFalse: [^ self processImage: balancedBracketCollection from: aRawString]