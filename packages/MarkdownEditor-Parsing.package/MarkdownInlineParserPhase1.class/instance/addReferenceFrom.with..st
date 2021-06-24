add to inline elements
addReferenceFrom: aString with: aReferenceType

	| matcher reference |
	aReferenceType = MarkdownImage 
		ifTrue: [self cleanUpForImage].
	matcher := RxMatcher forString: '\[(.*)\]\((.*)\)'.
	(matcher matches: aString)
		ifTrue: [reference := self addReferenceAndParseEmphasisFrom: matcher with: aReferenceType.
				self inlineElements add: reference].
	self previousChar: aString last