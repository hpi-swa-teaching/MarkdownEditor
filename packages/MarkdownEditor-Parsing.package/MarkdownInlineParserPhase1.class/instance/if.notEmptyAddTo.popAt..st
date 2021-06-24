helpers - reference
if: anOpenBracketStack notEmptyAddTo: aBalancedBracketCollection popAt: anIndex

	anOpenBracketStack isEmpty 
		ifFalse:[aBalancedBracketCollection add: anOpenBracketStack pop @ anIndex]