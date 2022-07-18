helpers - reference
calculateBalancedBracketCollectionFrom: aRawString

	| balancedBracketCollection openBracketStack |
	openBracketStack := Stack new.
	balancedBracketCollection := OrderedCollection new.
	aRawString
		doWithIndex: [:char :index |
			self create: balancedBracketCollection from: openBracketStack with: char and: index].
	^ balancedBracketCollection