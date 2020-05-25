parse support
initializeInstanceVariables

	instanceVariables := #().
  allowUnderscoreAssignments := Scanner allowUnderscoreAsAssignment.
	allowUnderscoreSelectors := Scanner prefAllowUnderscoreSelectors.
	allowBlockArgumentAssignment := Scanner allowBlockArgumentAssignment.
	sourcePosition := 1.
	arguments
		ifNil: [ arguments := OrderedCollection with: nil ]
		ifNotNil: [ arguments reset; addLast: nil ].
	temporaries
		ifNil: [ temporaries := OrderedCollection with: nil ]
		ifNotNil: [ temporaries reset; addLast: nil ].
	context ifNotNil: [ self initializeVariablesFromContext ].
	bracketDepth := 0.
	ranges
		ifNil: [ ranges := OrderedCollection new: 40 "Covers over 80% of all methods." ]
		ifNotNil: [ ranges reset ]
