parsing
processReferenceFrom: aRawString

	| balancedBracketCollection referenceType |
	
	referenceType := self decideReferenceType.
	balancedBracketCollection := self calculateBalancedBracketCollectionFrom: aRawString.
	(balancedBracketCollection isEmpty)
		ifTrue: [^ self processStringFrom: aRawString].
	referenceType = MarkdownLink
		ifTrue: [^ self processLink: balancedBracketCollection from: aRawString]
		ifFalse: [^ self processImage: balancedBracketCollection from: aRawString]