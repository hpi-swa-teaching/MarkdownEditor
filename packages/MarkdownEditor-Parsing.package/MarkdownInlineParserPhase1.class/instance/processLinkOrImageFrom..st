parsing
processLinkOrImageFrom: aRawString

	| balancedBracketCollection linkType |
	balancedBracketCollection := self calculateBalancedBracketCollectionFrom: aRawString.
	(balancedBracketCollection isEmpty or: [(balancedBracketCollection last x = 1) not])
		ifTrue: [^ self processStringFrom: aRawString].

	linkType := self decideLinkType.
	
	^ self process: balancedBracketCollection for: linkType from: aRawString