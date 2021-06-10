new inline parsing
calculateBalancedBracketCollectionFrom: aRawString

	| balancedBracketCollection openBracketStack |
	openBracketStack := Stack new. 
	balancedBracketCollection := OrderedCollection new.
	aRawString
		doWithIndex: [:c :i | 
			c caseOf: {
			[$[] -> [openBracketStack push: i].
			[$]] -> [openBracketStack isEmpty
						ifFalse:[balancedBracketCollection add: openBracketStack pop @ i]].
			} otherwise: []].
	^ balancedBracketCollection