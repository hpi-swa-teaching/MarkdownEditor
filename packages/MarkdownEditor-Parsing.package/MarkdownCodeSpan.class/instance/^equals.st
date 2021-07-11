comparing
= aMarkdownInlineElement

	self == aMarkdownInlineElement
		ifTrue: [ ^ true ].
	self class = aMarkdownInlineElement class
		ifFalse: [ ^ false ].
	^ self content = aMarkdownInlineElement content 
		and: [ self totalLength = aMarkdownInlineElement totalLength ]