add to inline elements
addReferenceFrom: aRawString with: aReferenceType

	| matcher reference |
	aReferenceType = MarkdownImage 
		ifTrue: [self cleanUpForImage].
	matcher := RxMatcher forString: '\[(.*)\]\((.*)\)'.
	(matcher matches: aRawString)
		ifTrue: [reference := self createReferenceFrom: matcher with: aReferenceType.
				self inlineElements add: reference].
	self previousChar: aRawString last