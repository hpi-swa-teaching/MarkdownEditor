divisible by three rule
affectedByTheRuleBefore: anOpeningDelimiter or: aClosingDelimiter

	((aClosingDelimiter isOriginalOpenerAndCloser)
		or: [anOpeningDelimiter isOriginalOpenerAndCloser])
			ifTrue: [^ true]
			ifFalse: [^ false]