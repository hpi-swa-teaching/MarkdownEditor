helpers - code
createCodeSpanFrom: aRawString with: anOpeningFenceInterval and: aClosingFenceInterval

	| codeSpan |
	codeSpan := MarkdownCodeSpan newFrom:
		(aRawString 
			copyFrom: (anOpeningFenceInterval stop + 1) 
			to: (aClosingFenceInterval start - 1))
		fenceLength: anOpeningFenceInterval extent + 1.
	self addToInlineElements: codeSpan.
	^ aRawString allButFirst: aClosingFenceInterval stop