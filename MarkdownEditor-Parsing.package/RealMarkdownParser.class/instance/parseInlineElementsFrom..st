parsing - inline
parseInlineElementsFrom: aRawString

	| inlineContainer |
	
	inlineContainer := OrderedCollection new.
	self delimiters: OrderedCollection new.
	self inlineText: aRawString.
	aRawString do:[:c | (MarkdownDelimiter allDelimiters includes: c)
							ifTrue: [self delimiters add: c.
									(c = $])
										ifTrue: [self processLinksAndImages]]].
	^ self delimiters