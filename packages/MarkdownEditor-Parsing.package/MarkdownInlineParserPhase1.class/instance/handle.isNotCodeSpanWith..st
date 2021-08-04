helpers - code
handle: aCodeSpanInterval isNotCodeSpanWith: aRawString

	self addToInlineElements: 
		(MarkdownString newFrom: 
			(aRawString copyFrom: 1 
			to: aCodeSpanInterval stop)).
	^ self processStringFrom: (aRawString allButFirst: aCodeSpanInterval stop)