helpers - code
handle: aCodeSpanIntervall isNotCodeSpanWith: aRawString

	self addToInlineElements: 
		(MarkdownString newFrom: 
			(aRawString copyFrom: 1 
			to: aCodeSpanIntervall stop)).
	^ self processStringFrom: (aRawString allButFirst: aCodeSpanIntervall stop)