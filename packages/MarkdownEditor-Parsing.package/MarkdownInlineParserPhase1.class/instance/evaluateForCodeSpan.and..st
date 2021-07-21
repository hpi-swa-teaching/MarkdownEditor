helpers - code
evaluateForCodeSpan: aCollectionOfPossibleCodeSpans and: aRawString

	| lengthOpeningFence index |
	lengthOpeningFence := aCollectionOfPossibleCodeSpans first extent.
	index := aCollectionOfPossibleCodeSpans allButFirst 
		findFirst: [:backtickSpan | backtickSpan extent = lengthOpeningFence].
	index = 0
		ifTrue: [^ self handle: aCollectionOfPossibleCodeSpans first isNotCodeSpanWith: aRawString]
		ifFalse: [^ self createCodeSpanFrom: aRawString 
			with: aCollectionOfPossibleCodeSpans first 
			and: (aCollectionOfPossibleCodeSpans at: index + 1)]