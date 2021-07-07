comparing
= aMarkdownInlineElement

	self == aMarkdownInlineElement
		ifTrue: [ ^ true ].
	self class = aMarkdownInlineElement class
		ifFalse: [ ^ false ].
	^ self isEmail = aMarkdownInlineElement isEmail and: [ self path = aMarkdownInlineElement path ]