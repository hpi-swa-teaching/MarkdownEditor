helpers - code
proofPossibleCodeSpanFrom: aRawString

	| matcher |
	matcher := RxMatcher forString: '.*(`.*`).*'.
	(matcher matches: aRawString)
		ifTrue: [self
					processStringFrom: (aRawString copyFrom: 1 to: (aRawString indexOf: $`)
								- 1).
				^ self
					processPossibleCodeSpanFrom: (aRawString
							copyFrom: (aRawString indexOf: $`)
							to: aRawString size)]