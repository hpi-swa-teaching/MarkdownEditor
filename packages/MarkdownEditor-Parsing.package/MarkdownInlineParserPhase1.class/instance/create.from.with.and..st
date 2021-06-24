helpers - reference
create: aBalancedBracketCollection from: anOpenBracketStack with: aChar and: anIndex

	aChar caseOf: {
		[$[] -> [anOpenBracketStack push: anIndex].
		[$]] -> [self if: anOpenBracketStack notEmptyAddTo: aBalancedBracketCollection popAt: anIndex]}
		otherwise: []