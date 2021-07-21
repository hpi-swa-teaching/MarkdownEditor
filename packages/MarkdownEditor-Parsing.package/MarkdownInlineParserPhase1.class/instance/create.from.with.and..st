helpers - reference
create: aBalancedBracketCollection from: anOpenBracketStack with: aChar and: anIndex

	aChar caseOf: {
		[$[] -> [anOpenBracketStack push: anIndex].
		[$]] -> [anOpenBracketStack 
					isEmpty ifFalse: [aBalancedBracketCollection add: anOpenBracketStack pop @ anIndex]]}
		otherwise: []