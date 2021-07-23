comparing
= anotherMarkdownInlineElement

	self == anotherMarkdownInlineElement
		ifTrue: [ ^ true ].
	self class = anotherMarkdownInlineElement class
		ifFalse: [ ^ false ].
	^ self startPosition = anotherMarkdownInlineElement startPosition